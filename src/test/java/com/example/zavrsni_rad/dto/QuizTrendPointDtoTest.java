package com.example.zavrsni_rad.dto;

import org.junit.jupiter.api.Test;

import java.time.LocalDateTime;

import static org.junit.jupiter.api.Assertions.assertEquals;

class QuizTrendPointDtoTest {

    @Test
    void exposesQuizSolveDate() {
        LocalDateTime solvedAt = LocalDateTime.of(2026, 6, 6, 14, 30);
        QuizTrendPointDto point = new QuizTrendPointDto(15, "Kviz #15", 10, 8, 0.8, solvedAt);

        assertEquals(solvedAt, point.getSolvedAt());
    }
}
