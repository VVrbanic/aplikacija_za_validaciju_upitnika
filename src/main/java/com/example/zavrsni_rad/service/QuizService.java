package com.example.zavrsni_rad.service;

import com.example.zavrsni_rad.dto.QuizAnswerResponse;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import java.util.Collections;
import java.util.List;

@Service
public class QuizService {
    private static final int BATCH_SIZE = 100;


    private final JdbcTemplate jdbcTemplate;

    public QuizService(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Transactional
    public QuizAnswerResponse submitQuiz(Integer userId, List<Integer> answerIds) {
        if (answerIds == null || answerIds.isEmpty()) {
            throw new IllegalArgumentException("answerIds je prazan.");
        }

        Integer quizId = jdbcTemplate.queryForObject(
                "INSERT INTO upitnik (korisnici_id) VALUES (?) RETURNING id",
                Integer.class,
                userId
        );

        jdbcTemplate.batchUpdate(
                "INSERT INTO upitnik_odgovori (upitnik_id, odgovor_id) VALUES (?, ?)",
                answerIds,
                BATCH_SIZE,
                (ps, answerId) -> {
                    ps.setInt(1, quizId);
                    ps.setInt(2, answerId);
                }
        );

        Integer correct = countCorrectWithIn(answerIds);
        return new QuizAnswerResponse(quizId, answerIds.size(), correct == null ? 0 : correct);
    }

    private Integer countCorrectWithIn(List<Integer> answerIds) {
        String placeholders = String.join(",", Collections.nCopies(answerIds.size(), "?"));
        String sql = "SELECT COUNT(*) FROM odgovori WHERE id IN (" + placeholders + ") AND tocan_odgovor = 1";
        return jdbcTemplate.queryForObject(sql, Integer.class, answerIds.toArray());
    }
}
