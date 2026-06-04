package com.example.zavrsni_rad.repository;
import com.example.zavrsni_rad.dto.QuestionDto;

import java.util.List;


public interface QuestionCustomRepository{
    List<QuestionDto> getRandomQuiz(int limit, List<Integer> categoryIds);

}
