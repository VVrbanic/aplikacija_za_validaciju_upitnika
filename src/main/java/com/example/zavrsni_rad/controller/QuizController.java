package com.example.zavrsni_rad.controller;

import com.example.zavrsni_rad.dto.*;
import com.example.zavrsni_rad.entity.User;
import com.example.zavrsni_rad.service.AdminResultsService;
import com.example.zavrsni_rad.service.CurrentUserService;
import com.example.zavrsni_rad.service.QuizService;
import com.example.zavrsni_rad.service.QuizStatisticsService;
import com.example.zavrsni_rad.service.ItemDiscriminationService;
import com.example.zavrsni_rad.service.DistractorAnalysisService;
import com.example.zavrsni_rad.service.EaseIndexService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import org.springframework.web.bind.annotation.*;
import org.springframework.http.HttpStatus;
import org.springframework.web.server.ResponseStatusException;

import java.sql.SQLException;
import java.util.List;

@RestController
@RequestMapping("/quiz")
public class QuizController {

    private final QuizService quizService;
    private final CurrentUserService currentUserService;
    private final QuizStatisticsService quizStatisticsService;
    private final AdminResultsService adminResultsService;
    private final ItemDiscriminationService itemDiscriminationService;
    private final DistractorAnalysisService distractorAnalysisService;
    private final EaseIndexService easeIndexService;

    public QuizController(
            QuizService quizService,
            CurrentUserService currentUserService,
            QuizStatisticsService quizStatisticsService,
            AdminResultsService adminResultsService,
            ItemDiscriminationService itemDiscriminationService,
            DistractorAnalysisService distractorAnalysisService,
            EaseIndexService easeIndexService
    ) {
        this.quizService = quizService;
        this.currentUserService = currentUserService;
        this.quizStatisticsService = quizStatisticsService;
        this.adminResultsService = adminResultsService;
        this.itemDiscriminationService = itemDiscriminationService;
        this.distractorAnalysisService = distractorAnalysisService;
        this.easeIndexService = easeIndexService;
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

    @GetMapping("/admin/results-summary")
    public AdminResultsSummaryDto adminResultsSummary() {
        User currentUser = currentUserService.getCurrentUser();
        if (currentUser.getIsAdmin() == null || currentUser.getIsAdmin() != 1) {
            throw new ResponseStatusException(HttpStatus.FORBIDDEN, "Pristup dozvoljen samo administratoru.");
        }

        return adminResultsService.getSummary();
    }

    @GetMapping("/admin/item-discrimination")
    public List<ItemDiscriminationDto> itemDiscrimination() {
        User currentUser = currentUserService.getCurrentUser();
        if (currentUser.getIsAdmin() == null || currentUser.getIsAdmin() != 1) {
            throw new ResponseStatusException(HttpStatus.FORBIDDEN, "Pristup dozvoljen samo administratoru.");
        }
        return itemDiscriminationService.getCorrectedItemTotalCorrelations();
    }

    @GetMapping("/admin/distractor-analysis")
    public List<DistractorQuestionDto> distractorAnalysis() {
        requireAdmin();
        return distractorAnalysisService.getQuestionSummary();
    }

    @GetMapping("/admin/distractor-analysis/{questionId}")
    public List<DistractorAnswerDto> distractorAnswerDetails(@PathVariable Integer questionId) {
        requireAdmin();
        return distractorAnalysisService.getAnswerDetails(questionId);
    }

    @GetMapping("/admin/ease-index")
    public List<EaseIndexItemDto> easeIndex() {
        requireAdmin();
        return easeIndexService.getItemEaseIndexes();
    }

    @GetMapping("/admin/ease-index/quizzes")
    public List<QuizTrendPointDto> quizEaseIndexes() {
        requireAdmin();
        return easeIndexService.getQuizEaseIndexes();
    }

    private void requireAdmin() {
        User currentUser = currentUserService.getCurrentUser();
        if (currentUser.getIsAdmin() == null || currentUser.getIsAdmin() != 1) {
            throw new ResponseStatusException(HttpStatus.FORBIDDEN, "Pristup dozvoljen samo administratoru.");
        }
    }
}
