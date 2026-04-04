package com.example.zavrsni_rad.config;

import com.example.zavrsni_rad.entity.User;
import org.springframework.stereotype.Service;

@Service
public class AuthService {

    private final TokenJwtService jwtService;

    public AuthService(TokenJwtService jwtService) {

        this.jwtService = jwtService;
    }

    public String createToken(User user) {
        return jwtService.generateToken(user.getUserName());
    }
}

