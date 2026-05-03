package com.example.zavrsni_rad.dto;

import lombok.Data;

import java.time.LocalDate;

@Data
public class UserInfoDto {
    private Integer id;
    private String firstName;
    private String lastName;
    private LocalDate dateOfBirth;
    private Integer isAdmin;
    private String userName;
    private String email;
    private Boolean isActive;
    private Integer educationId;
    private String educationName;
    private Integer ganderId;
    private String ganderName;
}
