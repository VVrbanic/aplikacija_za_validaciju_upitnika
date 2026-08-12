package com.example.zavrsni_rad.controller;

import com.example.zavrsni_rad.dto.QuizAnswerList;
import com.example.zavrsni_rad.dto.QuizAnswerResponse;
import com.example.zavrsni_rad.dto.QuizStatisticsDto;
import com.example.zavrsni_rad.service.CurrentUserService;
import com.example.zavrsni_rad.service.QuizService;
import com.example.zavrsni_rad.service.QuizStatisticsService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import org.springframework.web.bind.annotation.*;

import java.sql.SQLException;

@RestController
@RequestMapping("/quiz")
public class QuizController {

    private final QuizService quizService;
    private final CurrentUserService currentUserService;
    private final QuizStatisticsService quizStatisticsService;

    public QuizController(
            QuizService quizService,
            CurrentUserService currentUserService,
            QuizStatisticsService quizStatisticsService
    ) {
        this.quizService = quizService;
        this.currentUserService = currentUserService;
        this.quizStatisticsService = quizStatisticsService;
    }

    @PostMapping("/submit")
    public QuizAnswerResponse submit(@RequestBody QuizAnswerList model) throws SQLException {
        Integer userId = currentUserService.getCurrentUserId();
        return quizService.submitQuiz(userId, model.getAnswerIds());
    }

    @GetMapping("/statistics")
    public QuizStatisticsDto statistics() {
        Integer userId = currentUserService.getCurrentUserId();
        return quizStatisticsService.getStatisticsForUser(userId);
    }
}

