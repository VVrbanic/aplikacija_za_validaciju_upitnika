package com.example.zavrsni_rad.service;

import com.example.zavrsni_rad.dto.ItemDiscriminationDto;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ItemDiscriminationService {
    private final JdbcTemplate jdbcTemplate;

    public ItemDiscriminationService(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Transactional(readOnly = true)
    public List<ItemDiscriminationDto> getCorrectedItemTotalCorrelations() {
        String sql = """
                WITH item_results AS (
                    SELECT u.id AS quiz_id, p.id AS question_id, k.id AS category_id,
                           k.naziv AS category_name, p.pitanje AS question_text,
                           MAX(CASE WHEN o.tocan_odgovor = 1 THEN 1 ELSE 0 END) AS item_score
                    FROM upitnik u
                    JOIN upitnik_odgovori uo ON uo.upitnik_id = u.id
                    JOIN odgovori o ON o.id = uo.odgovor_id
                    JOIN pitanja p ON p.id = o.pitanja_id
                    JOIN kategorije k ON k.id = p.kategorije_id
                    GROUP BY u.id, p.id, k.id, k.naziv, p.pitanje
                ),
                category_scores AS (
                    SELECT quiz_id, category_id, SUM(item_score) AS category_score
                    FROM item_results GROUP BY quiz_id, category_id
                ),
                questionnaire_scores AS (
                    SELECT quiz_id, SUM(item_score) AS questionnaire_score
                    FROM item_results GROUP BY quiz_id
                )
                SELECT ir.question_id, ir.question_text, ir.category_name,
                       CORR(ir.item_score::double precision,
                            (cs.category_score - ir.item_score)::double precision)
                           AS category_corrected_item_total_correlation,
                       CORR(ir.item_score::double precision,
                            (qs.questionnaire_score - ir.item_score)::double precision)
                           AS questionnaire_corrected_item_total_correlation
                FROM item_results ir
                JOIN category_scores cs ON cs.quiz_id = ir.quiz_id AND cs.category_id = ir.category_id
                JOIN questionnaire_scores qs ON qs.quiz_id = ir.quiz_id
                GROUP BY ir.question_id, ir.question_text, ir.category_name
                ORDER BY ir.category_name, ir.question_text
                """;

        return jdbcTemplate.query(sql, (rs, rowNum) -> new ItemDiscriminationDto(
                rs.getInt("question_id"),
                rs.getString("question_text"),
                rs.getString("category_name"),
                rs.getObject("category_corrected_item_total_correlation", Double.class),
                rs.getObject("questionnaire_corrected_item_total_correlation", Double.class)
        ));
    }
}
