package com.example.zavrsni_rad.dto;

public class QuizTrendPointDto {
    private Integer quizId;
    private String label;
    private Integer totalAnswers;
    private Integer correctAnswers;
    private Double easeIndex;

    public QuizTrendPointDto(
            Integer quizId,
            String label,
            Integer totalAnswers,
            Integer correctAnswers,
            Double easeIndex
    ) {
        this.quizId = quizId;
        this.label = label;
        this.totalAnswers = totalAnswers;
        this.correctAnswers = correctAnswers;
        this.easeIndex = easeIndex;
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
}
