package com.example.zavrsni_rad.controller;

import com.example.zavrsni_rad.dto.AnswerDto;
import com.example.zavrsni_rad.dto.CreateQuestionRequest;
import com.example.zavrsni_rad.dto.QuestionDto;
import com.example.zavrsni_rad.entity.Answer;
import com.example.zavrsni_rad.entity.Category;
import com.example.zavrsni_rad.entity.Question;
import com.example.zavrsni_rad.repository.CategoryRepository;
import com.example.zavrsni_rad.repository.QuestionCustomRepository;
import com.example.zavrsni_rad.repository.QuestionRepository;
import jakarta.validation.Valid;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@RestController
@RequestMapping("/question")
public class QuestionController {

    private final QuestionCustomRepository questionCustomRepository;
    private final QuestionRepository questionRepository;
    private final CategoryRepository categoryRepository;

    public QuestionController(
            QuestionCustomRepository questionCustomRepository,
            QuestionRepository questionRepository,
            CategoryRepository categoryRepository
    ) {
        this.questionCustomRepository = questionCustomRepository;
        this.questionRepository = questionRepository;
        this.categoryRepository = categoryRepository;
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

    @PostMapping
    @Transactional
    public ResponseEntity<QuestionDto> create(@Valid @RequestBody CreateQuestionRequest request) {
        Category category = categoryRepository.findById(request.getCategoryId().longValue())
                .orElseThrow(() -> new IllegalArgumentException("Odabrana kategorija ne postoji."));

        Question question = new Question();
        question.setQuestion(request.getQuestion().trim());
        question.setCatogoryId(category.getId());
        question.setActive(1);

        List<Answer> answers = new ArrayList<>();
        answers.add(buildAnswer(question, request.getAnswerA(), request.getCorrectAnswer() == 1));
        answers.add(buildAnswer(question, request.getAnswerB(), request.getCorrectAnswer() == 2));
        answers.add(buildAnswer(question, request.getAnswerC(), request.getCorrectAnswer() == 3));
        answers.add(buildAnswer(question, request.getAnswerD(), request.getCorrectAnswer() == 4));
        question.setAnswers(answers);

        Question savedQuestion = questionRepository.save(question);
        return ResponseEntity.status(HttpStatus.CREATED).body(toDto(savedQuestion));
    }

    private Answer buildAnswer(Question question, String value, boolean isCorrect) {
        Answer answer = new Answer();
        answer.setQuestion(question);
        answer.setAnswer(value.trim());
        answer.setActive(1);
        answer.setCreateDate(LocalDate.now());
        answer.setEditDate(LocalDate.now());
        answer.setCorrectAnswer(isCorrect ? 1 : 0);
        return answer;
    }

    private QuestionDto toDto(Question question) {
        QuestionDto dto = new QuestionDto();
        dto.setId(question.getId());
        dto.setQuestion(question.getQuestion());
        dto.setCategoryId(question.getCatogoryId());
        dto.setAnswers(question.getAnswers().stream().map(answer -> {
            AnswerDto answerDto = new AnswerDto();
            answerDto.setId(answer.getId());
            answerDto.setAnswer(answer.getAnswer());
            answerDto.setCorrectAnswer(answer.getCorrectAnswer());
            return answerDto;
        }).toList());
        return dto;
    }
}
