package com.example.zavrsni_rad.controller;
import com.example.zavrsni_rad.dto.CategoryDto;
import com.example.zavrsni_rad.repository.CategoryRepository;
import com.example.zavrsni_rad.repository.QuestionRepository;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/categories")
public class CategoryController {
    private final CategoryRepository repository;
    private final QuestionRepository questionRepository;

    public CategoryController(CategoryRepository repository, QuestionRepository questionRepository) {
        this.repository = repository;
        this.questionRepository = questionRepository;
    }

    @GetMapping
    public List<CategoryDto> getAll() {
            return repository.findAll()
                .stream()
                .map(category -> CategoryDto.builder()
                        .id(Long.valueOf(category.getId()))
                        .name(category.getName())
                        .totalQuestionCount(questionRepository.countByCatogoryIdAndActive(category.getId(), 1))
                        .build())
                .toList();
    }
}
