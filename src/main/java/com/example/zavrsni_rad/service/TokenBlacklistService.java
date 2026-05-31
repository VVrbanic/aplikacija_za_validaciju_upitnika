package com.example.zavrsni_rad.service;

import com.example.zavrsni_rad.entity.BlacklistedToken;
import com.example.zavrsni_rad.repository.BlacklistedTokenRepository;
import com.example.zavrsni_rad.config.TokenJwtService;
import io.jsonwebtoken.Claims;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class TokenBlacklistService {

    private final BlacklistedTokenRepository blacklistedTokenRepository;
    private final TokenJwtService tokenJwtService;

    public TokenBlacklistService(BlacklistedTokenRepository blacklistedTokenRepository, TokenJwtService tokenJwtService) {
        this.blacklistedTokenRepository = blacklistedTokenRepository;
        this.tokenJwtService = tokenJwtService;
    }

    public void blacklist(String token) {
        Claims claims = tokenJwtService.parseClaims(token);
        Date expiration = claims.getExpiration();

        if (expiration == null) {
            throw new IllegalArgumentException("Token nema datum isteka.");
        }

        BlacklistedToken blacklistedToken = new BlacklistedToken();
        blacklistedToken.setToken(token);
        blacklistedToken.setExpiresAt(expiration.toInstant());
        blacklistedTokenRepository.save(blacklistedToken);
    }

    public boolean isBlacklisted(String token) {
        return blacklistedTokenRepository.existsById(token);
    }
}
