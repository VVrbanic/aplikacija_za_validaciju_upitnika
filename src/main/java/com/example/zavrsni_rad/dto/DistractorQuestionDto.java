package com.example.zavrsni_rad.dto;

public class DistractorQuestionDto {
    private final Integer questionId;
    private final String questionText;
    private final String categoryName;
    private final Integer distractorCount;
    private final Integer functionalDistractorCount;
    private final Double functionalDistractorEfficiency;

    public DistractorQuestionDto(Integer questionId, String questionText, String categoryName, Integer distractorCount,
                                 Integer functionalDistractorCount, Double functionalDistractorEfficiency) {
        this.questionId = questionId;
        this.questionText = questionText;
        this.categoryName = categoryName;
        this.distractorCount = distractorCount;
        this.functionalDistractorCount = functionalDistractorCount;
        this.functionalDistractorEfficiency = functionalDistractorEfficiency;
    }

    public Integer getQuestionId() { return questionId; }
    public String getQuestionText() { return questionText; }
    public String getCategoryName() { return categoryName; }
    public Integer getDistractorCount() { return distractorCount; }
    public Integer getFunctionalDistractorCount() { return functionalDistractorCount; }
    public Double getFunctionalDistractorEfficiency() { return functionalDistractorEfficiency; }
}
