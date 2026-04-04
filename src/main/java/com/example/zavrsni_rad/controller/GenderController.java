package com.example.zavrsni_rad.controller;

import com.example.zavrsni_rad.entity.Gender;
import com.example.zavrsni_rad.repository.GenderRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/gender")
public class GenderController {

    private final GenderRepository genderRepository;

    public GenderController(GenderRepository genderRepository) {
        this.genderRepository = genderRepository;
    }

    @GetMapping
    public List<Gender> getAll() {
        return genderRepository.findAll();
    }
}
