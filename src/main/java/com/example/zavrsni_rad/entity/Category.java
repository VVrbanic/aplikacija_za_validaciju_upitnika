package com.example.zavrsni_rad.entity;


import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "kategorije")
@Data
public class Category {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="ID")
    private Integer id;

    @Column(name="NAZIV")
    private String name;
}
