package com.example.zavrsni_rad.entity;


import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@Entity
@Table(name = "odgovori")
public class Answer {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "odgovor")
    private String answer;

    @Column(name = "aktivno")
    private Integer active;

    @Column(name = "datum_unosa")
    private LocalDateTime createDate;

    @Column(name = "datum_azuriranja")
    private LocalDateTime editDate;

    @Column(name = "tocan_odgovor")
    private Integer correctAnswer;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "pitanja_id")
    @JsonBackReference
    private Question question;

    @PrePersist
    public void onCreate() {
        LocalDateTime now = LocalDateTime.now();
        createDate = now;
        editDate = now;
    }

    @PreUpdate
    public void onUpdate() {
        editDate = LocalDateTime.now();
    }
}
