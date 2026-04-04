package com.example.zavrsni_rad.config;

import com.example.zavrsni_rad.entity.User;
import com.example.zavrsni_rad.repository.UserRepository;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.WebAuthenticationDetailsSource;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;
import java.util.List;

@Component
public class JwtAuthenticationFilter extends OncePerRequestFilter {

    private final TokenJwtService tokenJwtService;
    private final UserRepository userRepository;

    public JwtAuthenticationFilter(TokenJwtService tokenJwtService, UserRepository userRepository) {
        this.tokenJwtService = tokenJwtService;
        this.userRepository = userRepository;
    }

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
            throws ServletException, IOException {
        String authorizationHeader = request.getHeader("Authorization");

        if (authorizationHeader == null || !authorizationHeader.startsWith("Bearer ")) {
            filterChain.doFilter(request, response);
            return;
        }

        if (SecurityContextHolder.getContext().getAuthentication() != null) {
            filterChain.doFilter(request, response);
            return;
        }

        String token = authorizationHeader.substring(7);
        String username;

        try {
            username = tokenJwtService.extractUsername(token);
        } catch (RuntimeException ex) {
            filterChain.doFilter(request, response);
            return;
        }

        User user = userRepository.findByUserNameAndIsActiveTrue(username).orElse(null);
        if (user == null || !tokenJwtService.isValidToken(token, username)) {
            filterChain.doFilter(request, response);
            return;
        }

        String authority = user.getIsAdmin() != null && user.getIsAdmin() == 1 ? "ROLE_ADMIN" : "ROLE_USER";
        UsernamePasswordAuthenticationToken authentication =
                new UsernamePasswordAuthenticationToken(
                        username,
                        null,
                        List.of(new SimpleGrantedAuthority(authority))
                );
        authentication.setDetails(new WebAuthenticationDetailsSource().buildDetails(request));
        SecurityContextHolder.getContext().setAuthentication(authentication);

        filterChain.doFilter(request, response);
    }
}
