package com.example.zavrsni_rad.mapper;

import com.example.zavrsni_rad.config.AuthService;
import com.example.zavrsni_rad.dto.CurrentUser;
import com.example.zavrsni_rad.entity.User;
import org.springframework.stereotype.Component;

@Component
public class CurrentUserMapper {

    private final AuthService authService;

    public CurrentUserMapper(AuthService authService) {
        this.authService = authService;
    }

    public CurrentUser map(User user){
        CurrentUser currentUser = new CurrentUser();
        currentUser.setId(user.getId());
        currentUser.setUsername(user.getUserName());
        currentUser.setToken(authService.createToken(user));

        return currentUser;
    }
}
