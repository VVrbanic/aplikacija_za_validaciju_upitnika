package com.example.zavrsni_rad.dto;

import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Data;

@Data
public class CreateQuestionRequest {

    @NotNull(message = "Kategorija je obavezna.")
    private Integer categoryId;

    @NotBlank(message = "Pitanje je obavezno.")
    @Size(max = 1000, message = "Pitanje može imati najviše 1000 znakova.")
    private String question;

    @NotBlank(message = "Odgovor A je obavezan.")
    @Size(max = 256, message = "Odgovor A može imati najviše 256 znakova.")
    private String answerA;

    @NotBlank(message = "Odgovor B je obavezan.")
    @Size(max = 256, message = "Odgovor B može imati najviše 256 znakova.")
    private String answerB;

    @NotBlank(message = "Odgovor C je obavezan.")
    @Size(max = 256, message = "Odgovor C može imati najviše 256 znakova.")
    private String answerC;

    @NotBlank(message = "Odgovor D je obavezan.")
    @Size(max = 256, message = "Odgovor D može imati najviše 256 znakova.")
    private String answerD;

    @NotNull(message = "Točan odgovor je obavezan.")
    @Min(value = 1, message = "Točan odgovor mora biti odabran.")
    @Max(value = 4, message = "Točan odgovor mora biti odabran.")
    private Integer correctAnswer;
}
