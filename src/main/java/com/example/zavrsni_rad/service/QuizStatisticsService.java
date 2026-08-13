package com.example.zavrsni_rad.service;

import com.example.zavrsni_rad.dto.QuizCategoryStatisticDto;
import com.example.zavrsni_rad.dto.QuizStatisticsDto;
import com.example.zavrsni_rad.dto.QuizTrendPointDto;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class QuizStatisticsService {

    private final JdbcTemplate jdbcTemplate;

    public QuizStatisticsService(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Transactional(readOnly = true)
    public QuizStatisticsDto getStatisticsForUser(Integer userId) {
        return new QuizStatisticsDto(
                loadCategoryStats(userId),
                loadQuizTrend(userId)
        );
    }

    private List<QuizCategoryStatisticDto> loadCategoryStats(Integer userId) {
        String sql = """
                WITH user_category_stats AS (
                    SELECT
                        k.id AS category_id,
                        k.naziv AS category_name,
                        COUNT(uo.odgovor_id) AS total_answers,
                        COALESCE(SUM(CASE WHEN o.tocan_odgovor = 1 THEN 1 ELSE 0 END), 0) AS correct_answers
                    FROM upitnik u
                    JOIN upitnik_odgovori uo ON uo.upitnik_id = u.id
                    JOIN odgovori o ON o.id = uo.odgovor_id
                    JOIN pitanja p ON p.id = o.pitanja_id
                    JOIN kategorije k ON k.id = p.kategorije_id
                    WHERE u.korisnici_id = ?
                    GROUP BY k.id, k.naziv
                ), total_category_stats AS (
                    SELECT
                        p.kategorije_id AS category_id,
                        COUNT(uo.odgovor_id) AS total_answers,
                        COALESCE(SUM(CASE WHEN o.tocan_odgovor = 1 THEN 1 ELSE 0 END), 0) AS correct_answers
                    FROM upitnik_odgovori uo
                    JOIN odgovori o ON o.id = uo.odgovor_id
                    JOIN pitanja p ON p.id = o.pitanja_id
                    GROUP BY p.kategorije_id
                )
                SELECT
                    ucs.category_id,
                    ucs.category_name,
                    ucs.total_answers,
                    ucs.correct_answers,
                    ROUND(
                        ucs.correct_answers::numeric / NULLIF(ucs.total_answers, 0),
                        2
                    ) AS ease_index,
                    ROUND(
                        tcs.correct_answers::numeric / NULLIF(tcs.total_answers, 0),
                        2
                    ) AS total_ease_index
                FROM user_category_stats ucs
                JOIN total_category_stats tcs ON tcs.category_id = ucs.category_id
                ORDER BY ucs.category_id
                """;

        return jdbcTemplate.query(
                sql,
                (rs, rowNum) -> new QuizCategoryStatisticDto(
                        rs.getInt("category_id"),
                        rs.getString("category_name"),
                        rs.getInt("total_answers"),
                        rs.getInt("correct_answers"),
                        rs.getDouble("ease_index"),
                        rs.getDouble("total_ease_index")
                ),
                userId
        );
    }

    private List<QuizTrendPointDto> loadQuizTrend(Integer userId) {
        String sql = """
                SELECT
                    u.id AS quiz_id,
                    COUNT(uo.odgovor_id) AS total_answers,
                    COALESCE(SUM(CASE WHEN o.tocan_odgovor = 1 THEN 1 ELSE 0 END), 0) AS correct_answers,
                    ROUND(
                        COALESCE(
                            SUM(CASE WHEN o.tocan_odgovor = 1 THEN 1 ELSE 0 END)::numeric
                            / NULLIF(COUNT(uo.odgovor_id), 0),
                            0
                        ),
                        2
                    ) AS ease_index
                FROM upitnik u
                JOIN upitnik_odgovori uo ON uo.upitnik_id = u.id
                JOIN odgovori o ON o.id = uo.odgovor_id
                WHERE u.korisnici_id = ?
                GROUP BY u.id
                ORDER BY u.id
                """;

        return jdbcTemplate.query(
                sql,
                (rs, rowNum) -> new QuizTrendPointDto(
                        rs.getInt("quiz_id"),
                        "Kviz #" + rs.getInt("quiz_id"),
                        rs.getInt("total_answers"),
                        rs.getInt("correct_answers"),
                        rs.getDouble("ease_index")
                ),
                userId
        );
    }
}
