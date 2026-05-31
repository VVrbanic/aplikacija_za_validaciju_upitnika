package com.example.zavrsni_rad.dto;


import lombok.*;

@Getter @Setter
@NoArgsConstructor @AllArgsConstructor
@Builder
public class CategoryDto {
    private Long id;
    private String name;
    private Long totalQuestionCount;
}
