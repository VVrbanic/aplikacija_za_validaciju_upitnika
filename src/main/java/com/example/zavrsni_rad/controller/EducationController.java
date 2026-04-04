package com.example.zavrsni_rad.controller;


import com.example.zavrsni_rad.entity.Education;
import com.example.zavrsni_rad.repository.EducationRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/education")
public class EducationController {

    private final EducationRepository educationRepository;

    public EducationController(EducationRepository educationRepository) {
        this.educationRepository = educationRepository;
    }


    @GetMapping
    public List<Education> getAll() {
        return educationRepository.findAll();
    }
}
