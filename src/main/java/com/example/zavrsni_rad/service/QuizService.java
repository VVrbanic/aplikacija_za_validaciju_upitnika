package com.example.zavrsni_rad.service;

import com.example.zavrsni_rad.dto.QuizAnswerResponse;
import com.example.zavrsni_rad.repository.QuizSubmissionRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class QuizService {
    private final QuizSubmissionRepository quizSubmissionRepository;

    public QuizService(QuizSubmissionRepository quizSubmissionRepository) {
        this.quizSubmissionRepository = quizSubmissionRepository;
    }

    @Transactional
    public QuizAnswerResponse submitQuiz(Integer userId, List<Integer> answerIds) {
        if (answerIds == null || answerIds.isEmpty()) {
            throw new IllegalArgumentException("answerIds je prazan.");
        }

        Integer quizId = quizSubmissionRepository.createQuiz(userId);
        quizSubmissionRepository.saveAnswers(quizId, answerIds);
        Integer correct = quizSubmissionRepository.countCorrectWithIn(answerIds);
        return new QuizAnswerResponse(quizId, answerIds.size(), correct == null ? 0 : correct);
    }
}
