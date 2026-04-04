package com.example.zavrsni_rad.dto;

import lombok.Data;

@Data
public class CurrentUser {
        private Integer id;
        private String username;
        private String email;
        private String token;
}
