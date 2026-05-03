package com.example.zavrsni_rad.service;

import com.example.zavrsni_rad.entity.User;
import com.example.zavrsni_rad.repository.UserRepository;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

@Service
public class CurrentUserService {

    private final UserRepository userRepository;

    public CurrentUserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public Integer getCurrentUserId() {
        return getCurrentUser().getId();
    }

    public User getCurrentUser() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication == null || !authentication.isAuthenticated() || authentication instanceof AnonymousAuthenticationToken) {
            throw new RuntimeException("Korisnik nije prijavljen.");
        }

        String username = authentication.getName();
        return userRepository.findByUserNameAndIsActiveTrue(username)
                .orElseThrow(() -> new RuntimeException("Korisnik nije pronađen."));
    }
}
