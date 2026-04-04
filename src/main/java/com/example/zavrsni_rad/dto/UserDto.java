package com.example.zavrsni_rad.dto;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

import java.time.LocalDate;

@Data
public class UserDto {

        @NotBlank
        private String firstName;

        @NotBlank
        private String lastName;

        private LocalDate dateOfBirth;

        @NotBlank
        private String userName;

        @Email
        @NotBlank
        private String email;

        @NotBlank
        private String password;

        @NotNull
        private Integer ganderId;

        @NotNull
        private Integer educationId;

        private Boolean isAdmin = false;
}
