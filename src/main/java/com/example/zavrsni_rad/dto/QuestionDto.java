package com.example.zavrsni_rad.dto;

import lombok.*;

import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class QuestionDto {
    private Integer id;
    private String question;
    private Integer categoryId;
    private List<AnswerDto> answers;

}
