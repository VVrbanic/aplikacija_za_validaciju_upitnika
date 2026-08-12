package com.example.zavrsni_rad.dto;

import lombok.Getter;

@Getter
public class ItemDiscriminationDto {
    private final Integer questionId;
    private final String questionText;
    private final String categoryName;
    private final Double categoryCorrectedItemTotalCorrelation;
    private final Double questionnaireCorrectedItemTotalCorrelation;

    public ItemDiscriminationDto(Integer questionId, String questionText, String categoryName,
                                 Double categoryCorrectedItemTotalCorrelation,
                                 Double questionnaireCorrectedItemTotalCorrelation) {
        this.questionId = questionId;
        this.questionText = questionText;
        this.categoryName = categoryName;
        this.categoryCorrectedItemTotalCorrelation = categoryCorrectedItemTotalCorrelation;
        this.questionnaireCorrectedItemTotalCorrelation = questionnaireCorrectedItemTotalCorrelation;
    }
}
