package com.example.zavrsni_rad.dto;

import lombok.Data;
import java.util.Map;

@Data
public class QuizDto {
    Map<Integer,QuestionDto> questions;

    public QuizDto(Map<Integer, QuestionDto> map) {
        this.questions = map;
    }
}
