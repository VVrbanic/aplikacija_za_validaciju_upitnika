package com.example.zavrsni_rad.dto;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

import java.time.LocalDate;

@Data
public class LoginDto {

        private String userName;
        private String email;
        private String password;
        private String isActive;

}
