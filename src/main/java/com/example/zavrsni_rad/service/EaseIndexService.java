package com.example.zavrsni_rad.service;

import com.example.zavrsni_rad.dto.EaseIndexItemDto;
import com.example.zavrsni_rad.dto.QuizTrendPointDto;
import com.example.zavrsni_rad.repository.EaseIndexRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class EaseIndexService {
    private final EaseIndexRepository easeIndexRepository;

    public EaseIndexService(EaseIndexRepository easeIndexRepository) {
        this.easeIndexRepository = easeIndexRepository;
    }

    @Transactional(readOnly = true)
    public List<EaseIndexItemDto> getItemEaseIndexes() {
        return easeIndexRepository.getItemEaseIndexes();
    }

    @Transactional(readOnly = true)
    public List<QuizTrendPointDto> getQuizEaseIndexes() {
        return easeIndexRepository.getQuizEaseIndexes();
    }
}
