package com.example.zavrsni_rad.dto;

import lombok.Getter;

@Getter
public class EaseIndexItemDto {
    private final Integer questionId;
    private final String questionText;
    private final String categoryName;
    private final Integer totalAnswers;
    private final Integer correctAnswers;
    private final Double easeIndex;

    public EaseIndexItemDto(Integer questionId, String questionText, String categoryName,
                            Integer totalAnswers, Integer correctAnswers, Double easeIndex) {
        this.questionId = questionId;
        this.questionText = questionText;
        this.categoryName = categoryName;
        this.totalAnswers = totalAnswers;
        this.correctAnswers = correctAnswers;
        this.easeIndex = easeIndex;
    }
}
