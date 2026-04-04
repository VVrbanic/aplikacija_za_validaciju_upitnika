package com.example.zavrsni_rad.controller;

import com.example.zavrsni_rad.dto.QuizAnswerList;
import com.example.zavrsni_rad.dto.QuizAnswerResponse;
import com.example.zavrsni_rad.service.CurrentUserService;
import com.example.zavrsni_rad.service.QuizService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import org.springframework.web.bind.annotation.*;

import java.sql.SQLException;

@RestController
@RequestMapping("/quiz")
public class QuizController {

    private final QuizService quizService;
    private final CurrentUserService currentUserService;

    public QuizController(QuizService quizService, CurrentUserService currentUserService) {
        this.quizService = quizService;
        this.currentUserService = currentUserService;
    }

    @PostMapping("/submit")
    public QuizAnswerResponse submit(@RequestBody QuizAnswerList model) throws SQLException {
        Integer userId = currentUserService.getCurrentUserId();
        return quizService.submitQuiz(userId, model.getAnswerIds());
    }
}

