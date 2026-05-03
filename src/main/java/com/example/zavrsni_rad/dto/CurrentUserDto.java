package com.example.zavrsni_rad.dto;

import java.time.LocalDate;
import lombok.Data;

@Data
public class CurrentUserDto {
        private Integer id;
        private String firstName;
        private String lastName;
        private LocalDate dateOfBirth;
        private Integer isAdmin;
        private String username;
        private String email;
        private Boolean isActive;
        private Integer educationId;
        private String educationName;
        private Integer ganderId;
        private String ganderName;
        private String token;
}
