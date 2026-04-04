package com.example.zavrsni_rad.dto;

public class QuizAnswerResponse {
    private Integer quizId;   // upitnik.id
    private Integer total;    // koliko pitanja
    private Integer correct;  // broj tocnih

    public QuizAnswerResponse(Integer quizId, Integer total, Integer correct) {
        this.quizId = quizId;
        this.total = total;
        this.correct = correct;
    }

    public Integer getQuizId() { return quizId; }
    public Integer getTotal() { return total; }
    public Integer getCorrect() { return correct; }
}

