package com.example.zavrsni_rad.repository;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


import java.util.Collections;
import java.util.List;

@Repository
public class QuizSubmissionRepository {
    private static final int BATCH_SIZE = 100;


    private final JdbcTemplate jdbcTemplate;

    public QuizSubmissionRepository(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public Integer createQuiz(Integer userId) {
        return jdbcTemplate.queryForObject(
                "INSERT INTO upitnik (korisnici_id, datum_unosa, datum_azuriranja) VALUES (?, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP) RETURNING id",
                Integer.class,
                userId
        );
    }

    public void saveAnswers(Integer quizId, List<Integer> answerIds) {
        jdbcTemplate.batchUpdate(
                "INSERT INTO upitnik_odgovori (upitnik_id, odgovor_id) VALUES (?, ?)",
                answerIds,
                BATCH_SIZE,
                (ps, answerId) -> {
                    ps.setInt(1, quizId);
                    ps.setInt(2, answerId);
                }
        );

    }

    public Integer countCorrectWithIn(List<Integer> answerIds) {
        String placeholders = String.join(",", Collections.nCopies(answerIds.size(), "?"));
        String sql = "SELECT COUNT(*) FROM odgovori WHERE id IN (" + placeholders + ") AND tocan_odgovor = 1";
        return jdbcTemplate.queryForObject(sql, Integer.class, answerIds.toArray());
    }
}
