package com.example.zavrsni_rad.entity;


import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDate;

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
    private LocalDate createDate;

    @Column(name = "datum_azuriranja")
    private LocalDate editDate;

    @Column(name = "tocan_odgovor")
    private Integer correctAnswer;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "pitanja_id")
    @JsonBackReference
    private Question question;
}
