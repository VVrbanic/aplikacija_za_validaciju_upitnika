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
import java.util.stream.Collectors;

@Repository
public class QuestionRepositoryImpl implements QuestionCustomRepository {

    private final JdbcTemplate jdbcTemplate;

    public QuestionRepositoryImpl(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public List<QuestionDto> getRandomQuiz(int limit, List<Integer> categoryIds) {
        List<Object> params = new ArrayList<>();
        StringBuilder sql = new StringBuilder("""
            WITH kviz AS (
              SELECT
                p.id,
                p.pitanje,
                p.kategorije_id,
                row_number() OVER (ORDER BY p.random_order) AS sort_order
              FROM (
                SELECT p.id, p.pitanje, p.kategorije_id, random() AS random_order
                FROM pitanja p
                WHERE p.aktivno = 1
            """);

        if (categoryIds != null && !categoryIds.isEmpty()) {
            String placeholders = categoryIds.stream()
                    .map(id -> "?")
                    .collect(Collectors.joining(", "));
            sql.append(" AND p.kategorije_id IN (").append(placeholders).append(")");
            params.addAll(categoryIds);
        }

        sql.append("""
                ORDER BY random()
                LIMIT ?
              ) p
            )
            SELECT
              k.id AS p_id,
              k.pitanje,
              k.kategorije_id,
              k.sort_order,
              o.id AS o_id,
              o.odgovor,
              o.tocan_odgovor
            FROM kviz k
            JOIN odgovori o ON o.pitanja_id = k.id AND o.aktivno = 1
            ORDER BY k.sort_order, o.id
            """);
        params.add(limit);

        Map<Integer, QuestionDto> map = new LinkedHashMap<>();

        jdbcTemplate.query(sql.toString(), rs -> {
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
        }, params.toArray());

        return new ArrayList<>(map.values());
    }

}
