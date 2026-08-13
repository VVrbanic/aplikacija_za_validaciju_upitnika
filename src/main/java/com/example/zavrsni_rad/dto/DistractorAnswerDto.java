package com.example.zavrsni_rad.dto;

public class DistractorAnswerDto {
    private final Integer answerId;
    private final String answerText;
    private final Integer selectionCount;
    private final Double selectionPercentage;
    private final Double selectionTotalCorrelation;
    private final Boolean correct;

    public DistractorAnswerDto(Integer answerId, String answerText, Integer selectionCount,
                               Double selectionPercentage, Double selectionTotalCorrelation, Boolean correct) {
        this.answerId = answerId;
        this.answerText = answerText;
        this.selectionCount = selectionCount;
        this.selectionPercentage = selectionPercentage;
        this.selectionTotalCorrelation = selectionTotalCorrelation;
        this.correct = correct;
    }

    public Integer getAnswerId() { return answerId; }
    public String getAnswerText() { return answerText; }
    public Integer getSelectionCount() { return selectionCount; }
    public Double getSelectionPercentage() { return selectionPercentage; }
    public Double getSelectionTotalCorrelation() { return selectionTotalCorrelation; }
    public Boolean getCorrect() { return correct; }
}
