package com.example.zavrsni_rad.dto;

import java.time.LocalDateTime;

public class QuizTrendPointDto {
    private Integer quizId;
    private String label;
    private Integer totalAnswers;
    private Integer correctAnswers;
    private Double easeIndex;
    private LocalDateTime solvedAt;

    public QuizTrendPointDto(
            Integer quizId,
            String label,
            Integer totalAnswers,
            Integer correctAnswers,
            Double easeIndex
    ) {
        this(quizId, label, totalAnswers, correctAnswers, easeIndex, null);
    }

    public QuizTrendPointDto(
            Integer quizId,
            String label,
            Integer totalAnswers,
            Integer correctAnswers,
            Double easeIndex,
            LocalDateTime solvedAt
    ) {
        this.quizId = quizId;
        this.label = label;
        this.totalAnswers = totalAnswers;
        this.correctAnswers = correctAnswers;
        this.easeIndex = easeIndex;
        this.solvedAt = solvedAt;
    }

    public Integer getQuizId() {
        return quizId;
    }

    public String getLabel() {
        return label;
    }

    public Integer getTotalAnswers() {
        return totalAnswers;
    }

    public Integer getCorrectAnswers() {
        return correctAnswers;
    }

    public Double getEaseIndex() {
        return easeIndex;
    }

    public LocalDateTime getSolvedAt() {
        return solvedAt;
    }
}
