package com.example.zavrsni_rad.dto;

public class QuizCategoryStatisticDto {
    private Integer categoryId;
    private String categoryName;
    private Integer totalAnswers;
    private Integer correctAnswers;
    private Double easeIndex;
    private Double totalEaseIndex;

    public QuizCategoryStatisticDto(
            Integer categoryId,
            String categoryName,
            Integer totalAnswers,
            Integer correctAnswers,
            Double easeIndex,
            Double totalEaseIndex
    ) {
        this.categoryId = categoryId;
        this.categoryName = categoryName;
        this.totalAnswers = totalAnswers;
        this.correctAnswers = correctAnswers;
        this.easeIndex = easeIndex;
        this.totalEaseIndex = totalEaseIndex;
    }

    public Integer getCategoryId() {
        return categoryId;
    }

    public String getCategoryName() {
        return categoryName;
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

    public Double getTotalEaseIndex() {
        return totalEaseIndex;
    }
}
