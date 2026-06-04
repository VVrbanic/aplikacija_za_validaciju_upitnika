package com.example.zavrsni_rad.controller;


import com.example.zavrsni_rad.dto.QuestionDto;
import com.example.zavrsni_rad.repository.QuestionCustomRepository;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Collections;
import java.util.List;

@RestController
@RequestMapping("/question")
public class QuestionController {

    private final QuestionCustomRepository questionCustomRepository;

    public QuestionController(QuestionCustomRepository questionCustomRepository) {
        this.questionCustomRepository = questionCustomRepository;
    }


    @GetMapping("/random")
    public List<QuestionDto> getAll(
            @RequestParam(defaultValue = "50") int limit,
            @RequestParam(required = false) List<Integer> categoryIds
    ) {
        int effectiveLimit = Math.max(1, limit);
        return questionCustomRepository.getRandomQuiz(
                effectiveLimit,
                categoryIds == null ? Collections.emptyList() : categoryIds
        );
    }
}
