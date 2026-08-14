package com.example.zavrsni_rad.service;

import com.example.zavrsni_rad.dto.DistractorAnswerDto;
import com.example.zavrsni_rad.dto.DistractorQuestionDto;
import com.example.zavrsni_rad.repository.DistractorAnalysisRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class DistractorAnalysisService {
    private final DistractorAnalysisRepository distractorAnalysisRepository;

    public DistractorAnalysisService(DistractorAnalysisRepository distractorAnalysisRepository) {
        this.distractorAnalysisRepository = distractorAnalysisRepository;
    }

    @Transactional(readOnly = true)
    public List<DistractorQuestionDto> getQuestionSummary() {
        return distractorAnalysisRepository.getQuestionSummary();
    }

    @Transactional(readOnly = true)
    public List<DistractorAnswerDto> getAnswerDetails(Integer questionId) {
        return distractorAnalysisRepository.getAnswerDetails(questionId);
    }
}
