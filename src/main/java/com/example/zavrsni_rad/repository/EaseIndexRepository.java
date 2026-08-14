package com.example.zavrsni_rad.repository;

import com.example.zavrsni_rad.dto.EaseIndexItemDto;
import com.example.zavrsni_rad.dto.QuizTrendPointDto;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class EaseIndexRepository {
    private final JdbcTemplate jdbcTemplate;

    public EaseIndexRepository(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public List<EaseIndexItemDto> getItemEaseIndexes() {
        String sql = """
                SELECT p.id AS question_id,
                       p.pitanje AS question_text,
                       k.naziv AS category_name,
                       COUNT(uo.odgovor_id) AS total_answers,
                       COALESCE(SUM(CASE
                           WHEN uo.odgovor_id IS NOT NULL AND o.tocan_odgovor = 1 THEN 1 ELSE 0
                       END), 0) AS correct_answers,
                       COALESCE(SUM(CASE
                           WHEN uo.odgovor_id IS NOT NULL AND o.tocan_odgovor = 1 THEN 1 ELSE 0
                       END), 0)::double precision
                           / NULLIF(COUNT(uo.odgovor_id), 0) AS ease_index
                FROM pitanja p
                JOIN kategorije k ON k.id = p.kategorije_id
                LEFT JOIN odgovori o ON o.pitanja_id = p.id
                LEFT JOIN upitnik_odgovori uo ON uo.odgovor_id = o.id
                WHERE p.aktivno = 1
                GROUP BY p.id, p.pitanje, k.naziv
                ORDER BY k.naziv, p.pitanje
                """;

        return jdbcTemplate.query(sql, (rs, rowNum) -> new EaseIndexItemDto(
                rs.getInt("question_id"),
                rs.getString("question_text"),
                rs.getString("category_name"),
                rs.getInt("total_answers"),
                rs.getInt("correct_answers"),
                rs.getObject("ease_index", Double.class)
        ));
    }

    public List<QuizTrendPointDto> getQuizEaseIndexes() {
        String sql = """
                SELECT u.id AS quiz_id,
                       COUNT(uo.odgovor_id) AS total_answers,
                       COALESCE(SUM(CASE WHEN o.tocan_odgovor = 1 THEN 1 ELSE 0 END), 0) AS correct_answers,
                       COALESCE(SUM(CASE WHEN o.tocan_odgovor = 1 THEN 1 ELSE 0 END), 0)::double precision
                           / NULLIF(COUNT(uo.odgovor_id), 0) AS ease_index
                FROM upitnik u
                JOIN upitnik_odgovori uo ON uo.upitnik_id = u.id
                JOIN odgovori o ON o.id = uo.odgovor_id
                GROUP BY u.id
                ORDER BY u.id
                """;

        return jdbcTemplate.query(sql, (rs, rowNum) -> new QuizTrendPointDto(
                rs.getInt("quiz_id"),
                "Upitnik #" + rs.getInt("quiz_id"),
                rs.getInt("total_answers"),
                rs.getInt("correct_answers"),
                rs.getObject("ease_index", Double.class)
        ));
    }
}
