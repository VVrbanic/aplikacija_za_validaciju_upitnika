package com.example.zavrsni_rad.dto;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

import java.time.LocalDate;

@Data
public class UpdateUserInfoDto {
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

    @NotNull
    private Integer educationId;

    @NotNull
    private Integer ganderId;

    private String currentPassword;

    private String newPassword;

    private String repeatNewPassword;
}
