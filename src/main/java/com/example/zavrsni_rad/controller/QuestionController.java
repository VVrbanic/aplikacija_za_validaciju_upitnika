package com.example.zavrsni_rad.controller;


import com.example.zavrsni_rad.dto.QuestionDto;
import com.example.zavrsni_rad.repository.QuestionCustomRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/question")
public class QuestionController {

    private final QuestionCustomRepository questionCustomRepository;

    public QuestionController(QuestionCustomRepository questionCustomRepository) {
        this.questionCustomRepository = questionCustomRepository;
    }


    @GetMapping("/random")
    public List<QuestionDto> getAll() {
        return questionCustomRepository.getRandomQuiz();
    }
}
