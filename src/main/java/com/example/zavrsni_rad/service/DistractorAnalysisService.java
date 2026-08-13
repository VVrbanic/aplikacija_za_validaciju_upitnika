package com.example.zavrsni_rad.service;

import com.example.zavrsni_rad.dto.DistractorAnswerDto;
import com.example.zavrsni_rad.dto.DistractorQuestionDto;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class DistractorAnalysisService {
    private final JdbcTemplate jdbcTemplate;

    public DistractorAnalysisService(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Transactional(readOnly = true)
    public List<DistractorQuestionDto> getQuestionSummary() {
        String sql = """
                WITH question_attempts AS (
                    SELECT o.pitanja_id AS question_id, COUNT(*) AS attempt_count
                    FROM upitnik_odgovori uo
                    JOIN odgovori o ON o.id = uo.odgovor_id
                    GROUP BY o.pitanja_id
                ),
                answer_selections AS (
                    SELECT odgovor_id AS answer_id, COUNT(*) AS selection_count
                    FROM upitnik_odgovori
                    GROUP BY odgovor_id
                ),
                item_results AS (
                    SELECT u.id AS quiz_id, p.id AS question_id,
                           MAX(CASE WHEN selected.tocan_odgovor = 1 THEN 1 ELSE 0 END) AS item_score
                    FROM upitnik u
                    JOIN upitnik_odgovori uo ON uo.upitnik_id = u.id
                    JOIN odgovori selected ON selected.id = uo.odgovor_id
                    JOIN pitanja p ON p.id = selected.pitanja_id
                    GROUP BY u.id, p.id
                ),
                questionnaire_scores AS (
                    SELECT quiz_id, SUM(item_score) AS questionnaire_score
                    FROM item_results
                    GROUP BY quiz_id
                ),
                answer_discrimination AS (
                    SELECT a.id AS answer_id,
                           CORR((CASE WHEN chosen.id IS NULL THEN 0 ELSE 1 END)::double precision,
                                (qs.questionnaire_score - ir.item_score)::double precision) AS selection_correlation
                    FROM odgovori a
                    LEFT JOIN item_results ir ON ir.question_id = a.pitanja_id
                    LEFT JOIN questionnaire_scores qs ON qs.quiz_id = ir.quiz_id
                    LEFT JOIN upitnik_odgovori chosen ON chosen.upitnik_id = ir.quiz_id AND chosen.odgovor_id = a.id
                    GROUP BY a.id
                )
                SELECT p.id AS question_id, p.pitanje AS question_text, k.naziv AS category_name,
                       COUNT(o.id) FILTER (WHERE o.tocan_odgovor = 0) AS distractor_count,
                       COALESCE(SUM(CASE
                            WHEN o.tocan_odgovor = 0
                            AND COALESCE(s.selection_count, 0) >= 0.05 * COALESCE(qa.attempt_count, 0)
                            AND COALESCE(ad.selection_correlation, 0) > 0
                           THEN 1 ELSE 0 END), 0) AS functional_distractor_count,
                       COALESCE(100.0 * SUM(CASE
                            WHEN o.tocan_odgovor = 0
                            AND COALESCE(s.selection_count, 0) >= 0.05 * COALESCE(qa.attempt_count, 0)
                            AND COALESCE(ad.selection_correlation, 0) > 0
                           THEN 1 ELSE 0 END)
                           / NULLIF(COUNT(o.id) FILTER (WHERE o.tocan_odgovor = 0), 0), 0)
                           AS functional_distractor_efficiency
                FROM pitanja p
                JOIN kategorije k ON k.id = p.kategorije_id
                LEFT JOIN odgovori o ON o.pitanja_id = p.id
                LEFT JOIN question_attempts qa ON qa.question_id = p.id
                LEFT JOIN answer_selections s ON s.answer_id = o.id
                LEFT JOIN answer_discrimination ad ON ad.answer_id = o.id
                WHERE p.aktivno = 1
                GROUP BY p.id, p.pitanje, k.naziv
                ORDER BY k.naziv, p.pitanje
                """;

        return jdbcTemplate.query(sql, (rs, rowNum) -> new DistractorQuestionDto(
                rs.getInt("question_id"), rs.getString("question_text"), rs.getString("category_name"),
                rs.getInt("distractor_count"), rs.getInt("functional_distractor_count"),
                rs.getDouble("functional_distractor_efficiency")
        ));
    }

    @Transactional(readOnly = true)
    public List<DistractorAnswerDto> getAnswerDetails(Integer questionId) {
        String sql = """
                WITH item_results AS (
                    SELECT u.id AS quiz_id, p.id AS question_id,
                           MAX(CASE WHEN selected.tocan_odgovor = 1 THEN 1 ELSE 0 END) AS item_score
                    FROM upitnik u
                    JOIN upitnik_odgovori uo ON uo.upitnik_id = u.id
                    JOIN odgovori selected ON selected.id = uo.odgovor_id
                    JOIN pitanja p ON p.id = selected.pitanja_id
                    GROUP BY u.id, p.id
                ),
                questionnaire_scores AS (
                    SELECT quiz_id, SUM(item_score) AS questionnaire_score
                    FROM item_results
                    GROUP BY quiz_id
                )
                SELECT o.id AS answer_id, o.odgovor AS answer_text,
                       COUNT(chosen.id) AS selection_count,
                       COALESCE(100.0 * COUNT(chosen.id) / NULLIF(COUNT(ir.quiz_id), 0), 0)
                           AS selection_percentage,
                       CORR((CASE WHEN chosen.id IS NULL THEN 0 ELSE 1 END)::double precision,
                            (qs.questionnaire_score - ir.item_score)::double precision)
                           AS selection_total_correlation,
                       o.tocan_odgovor = 1 AS correct
                FROM odgovori o
                LEFT JOIN item_results ir ON ir.question_id = o.pitanja_id
                LEFT JOIN questionnaire_scores qs ON qs.quiz_id = ir.quiz_id
                LEFT JOIN upitnik_odgovori chosen ON chosen.upitnik_id = ir.quiz_id AND chosen.odgovor_id = o.id
                WHERE o.pitanja_id = ?
                GROUP BY o.id, o.odgovor, o.tocan_odgovor
                ORDER BY o.tocan_odgovor DESC, o.id
                """;

        return jdbcTemplate.query(sql, (rs, rowNum) -> new DistractorAnswerDto(
                rs.getInt("answer_id"), rs.getString("answer_text"), rs.getInt("selection_count"),
                rs.getDouble("selection_percentage"),
                rs.getObject("selection_total_correlation", Double.class), rs.getBoolean("correct")
        ), questionId);
    }
}
