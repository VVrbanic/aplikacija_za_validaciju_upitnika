package com.example.zavrsni_rad.dto;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class AnswerDto {
    private Integer id;
    private String answer;
    private Integer correctAnswer;
}
