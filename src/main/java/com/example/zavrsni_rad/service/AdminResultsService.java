package com.example.zavrsni_rad.service;

import com.example.zavrsni_rad.dto.AdminResultsSummaryDto;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class AdminResultsService {

    private final JdbcTemplate jdbcTemplate;

    public AdminResultsService(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Transactional(readOnly = true)
    public AdminResultsSummaryDto getSummary() {
        String sql = """
                WITH quiz_scores AS (
                    SELECT
                        u.id AS quiz_id,
                        COUNT(uo.odgovor_id) AS total_questions,
                        COALESCE(SUM(CASE WHEN o.tocan_odgovor = 1 THEN 1 ELSE 0 END), 0) AS correct_answers,
                        COALESCE(
                            100.0 * SUM(CASE WHEN o.tocan_odgovor = 1 THEN 1 ELSE 0 END)
                            / NULLIF(COUNT(uo.odgovor_id), 0),
                            0
                        ) AS solved_percentage
                    FROM upitnik u
                    LEFT JOIN upitnik_odgovori uo ON uo.upitnik_id = u.id
                    LEFT JOIN odgovori o ON o.id = uo.odgovor_id
                    GROUP BY u.id
                )
                SELECT
                    (SELECT COUNT(*) FROM korisnici WHERE aktivno = 1) AS user_count,
                    (SELECT COUNT(*) FROM pitanja WHERE aktivno = 1) AS question_count,
                    COALESCE(AVG(total_questions), 0) AS average_questions_per_quiz,
                    COALESCE(AVG(solved_percentage), 0) AS average_result_percentage,
                    COALESCE(PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY solved_percentage), 0) AS median_percentage,
                    COALESCE(STDDEV_POP(solved_percentage), 0) AS standard_deviation,
                    COALESCE(MIN(solved_percentage), 0) AS min_percentage,
                    COALESCE(MAX(solved_percentage), 0) AS max_percentage
                FROM quiz_scores
                """;

        return jdbcTemplate.queryForObject(
                sql,
                (rs, rowNum) -> new AdminResultsSummaryDto(
                        rs.getLong("user_count"),
                        rs.getLong("question_count"),
                        rs.getDouble("average_questions_per_quiz"),
                        rs.getDouble("average_result_percentage"),
                        rs.getDouble("median_percentage"),
                        rs.getDouble("standard_deviation"),
                        rs.getDouble("min_percentage"),
                        rs.getDouble("max_percentage")
                )
        );
    }
}
