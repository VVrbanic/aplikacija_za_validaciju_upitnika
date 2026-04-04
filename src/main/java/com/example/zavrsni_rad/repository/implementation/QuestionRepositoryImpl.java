package com.example.zavrsni_rad.repository.implementation;

import com.example.zavrsni_rad.dto.AnswerDto;
import com.example.zavrsni_rad.dto.QuestionDto;
import com.example.zavrsni_rad.repository.QuestionCustomRepository;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Repository
public class QuestionRepositoryImpl implements QuestionCustomRepository {

    private final JdbcTemplate jdbcTemplate;

    public QuestionRepositoryImpl(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public List<QuestionDto> getRandomQuiz() {
        String sql = """
            WITH kviz AS (
              SELECT p.id, p.pitanje, p.kategorije_id
              FROM pitanja p
              WHERE p.aktivno = 1
              ORDER BY random()
              LIMIT 50
            )
            SELECT
              k.id AS p_id,
              k.pitanje,
              k.kategorije_id,
              o.id AS o_id,
              o.odgovor,
              o.tocan_odgovor
            FROM kviz k
            JOIN odgovori o ON o.pitanja_id = k.id
            ORDER BY k.id, o.id
            """;

        Map<Integer, QuestionDto> map = new LinkedHashMap<>();

        jdbcTemplate.query(sql, rs -> {
            int pId = rs.getInt("p_id");

            QuestionDto q = map.computeIfAbsent(pId, id -> {
                QuestionDto dto = new QuestionDto();
                dto.setId(id);
                try {
                    dto.setQuestion(rs.getString("pitanje"));
                    dto.setCategoryId(rs.getInt("kategorije_id"));
                    dto.setAnswers(new ArrayList<>());
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                return dto;
            });

            AnswerDto a = new AnswerDto();
            a.setId(rs.getInt("o_id"));
            a.setAnswer(rs.getString("odgovor"));
            a.setCorrectAnswer(rs.getInt("tocan_odgovor"));
            q.getAnswers().add(a);
        });

        return new ArrayList<>(map.values());
    }

}
