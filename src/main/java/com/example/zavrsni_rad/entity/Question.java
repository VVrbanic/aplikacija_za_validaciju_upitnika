package com.example.zavrsni_rad.entity;


import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Builder
@Entity
@Table(name = "pitanja")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Question {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "pitanje", length = 1000)
    private String question;

    @Column(name = "kategorije_id")
    private Integer catogoryId;

    @Column(name = "aktivno")
    private Integer active;

    @Column(name = "datum_unosa")
    private LocalDateTime createDate;

    @Column(name = "datum_azuriranja")
    private LocalDateTime editDate;

    @OneToMany(
            mappedBy = "question",
            cascade = CascadeType.ALL,
            orphanRemoval = true
    )
    @JsonManagedReference
    @Builder.Default
    private List<Answer> answers = new ArrayList<>();

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
