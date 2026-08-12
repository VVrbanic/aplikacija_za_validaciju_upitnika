package com.example.zavrsni_rad.entity;


import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDate;
import java.time.LocalDateTime;

@Getter
@Setter
@NoArgsConstructor
@Entity
@Table(name = "korisnici")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name="ime")
    private String firstName;

    @Column(name="prezime")
    private String lastName;

    @Column(name = "datum_rodenja")
    private LocalDate dateOfBirth;

    @Column(name = "is_admin")
    private Integer isAdmin;

    @Column(name = "korisnicko_ime")
    private String userName;

    @Column(name = "e_mail")
    private String email;

    @Column(name="lozinka")
    private String password;

    @Column(name="aktivan")
    private Boolean isActive = true;

    @Column(name = "datum_unosa")
    private LocalDateTime createDate;

    @Column(name = "datum_azuriranja")
    private LocalDateTime editDate;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "stupanj_obrazovanja_id", nullable = false)
    private Education education;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "spol_id", nullable = false)
    private Gender gander;

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
