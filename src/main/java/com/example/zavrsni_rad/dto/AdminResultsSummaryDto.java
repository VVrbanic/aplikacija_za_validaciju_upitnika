package com.example.zavrsni_rad.dto;

public class AdminResultsSummaryDto {
    private long userCount;
    private long questionCount;
    private double averageQuestionsPerQuiz;
    private double averageResultPercentage;
    private double medianPercentage;
    private double standardDeviation;
    private double minPercentage;
    private double maxPercentage;

    public AdminResultsSummaryDto(
            long userCount,
            long questionCount,
            double averageQuestionsPerQuiz,
            double averageResultPercentage,
            double medianPercentage,
            double standardDeviation,
            double minPercentage,
            double maxPercentage
    ) {
        this.userCount = userCount;
        this.questionCount = questionCount;
        this.averageQuestionsPerQuiz = averageQuestionsPerQuiz;
        this.averageResultPercentage = averageResultPercentage;
        this.medianPercentage = medianPercentage;
        this.standardDeviation = standardDeviation;
        this.minPercentage = minPercentage;
        this.maxPercentage = maxPercentage;
    }

    public long getUserCount() {
        return userCount;
    }

    public long getQuestionCount() {
        return questionCount;
    }

    public double getAverageQuestionsPerQuiz() {
        return averageQuestionsPerQuiz;
    }

    public double getAverageResultPercentage() {
        return averageResultPercentage;
    }

    public double getMedianPercentage() {
        return medianPercentage;
    }

    public double getStandardDeviation() {
        return standardDeviation;
    }

    public double getMinPercentage() {
        return minPercentage;
    }

    public double getMaxPercentage() {
        return maxPercentage;
    }
}
