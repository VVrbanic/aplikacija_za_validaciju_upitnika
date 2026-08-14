package com.example.zavrsni_rad.service;

import com.example.zavrsni_rad.dto.QuizStatisticsDto;
import com.example.zavrsni_rad.repository.QuizStatisticsRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class QuizStatisticsService {
    private final QuizStatisticsRepository quizStatisticsRepository;

    public QuizStatisticsService(QuizStatisticsRepository quizStatisticsRepository) {
        this.quizStatisticsRepository = quizStatisticsRepository;
    }

    @Transactional(readOnly = true)
    public QuizStatisticsDto getStatisticsForUser(Integer userId) {
        return new QuizStatisticsDto(
                quizStatisticsRepository.loadCategoryStats(userId),
                quizStatisticsRepository.loadQuizTrend(userId)
        );
    }
}
