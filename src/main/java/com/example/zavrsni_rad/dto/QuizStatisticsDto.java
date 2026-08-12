package com.example.zavrsni_rad.dto;

import java.util.List;

public class QuizStatisticsDto {
    private List<QuizCategoryStatisticDto> categoryStats;
    private List<QuizTrendPointDto> quizTrend;

    public QuizStatisticsDto(
            List<QuizCategoryStatisticDto> categoryStats,
            List<QuizTrendPointDto> quizTrend
    ) {
        this.categoryStats = categoryStats;
        this.quizTrend = quizTrend;
    }

    public List<QuizCategoryStatisticDto> getCategoryStats() {
        return categoryStats;
    }

    public List<QuizTrendPointDto> getQuizTrend() {
        return quizTrend;
    }
}
