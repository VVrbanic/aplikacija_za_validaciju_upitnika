package com.example.zavrsni_rad.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.Instant;

@Getter
@Setter
@NoArgsConstructor
@Entity
@Table(name = "nedopusteni_tokeni")
public class BlacklistedToken {

    @Id
    @Column(name = "token", nullable = false, length = 2048)
    private String token;

    @Column(name = "expires_at", nullable = false)
    private Instant expiresAt;
}
