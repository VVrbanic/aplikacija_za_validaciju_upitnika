package com.example.zavrsni_rad.mapper;

import com.example.zavrsni_rad.config.AuthService;
import com.example.zavrsni_rad.dto.CurrentUserDto;
import com.example.zavrsni_rad.entity.User;
import org.springframework.stereotype.Component;

@Component
public class CurrentUserMapper {

    private final AuthService authService;

    public CurrentUserMapper(AuthService authService) {
        this.authService = authService;
    }

    public CurrentUserDto map(User user){
        CurrentUserDto currentUserDto = new CurrentUserDto();
        currentUserDto.setId(user.getId());
        currentUserDto.setFirstName(user.getFirstName());
        currentUserDto.setLastName(user.getLastName());
        currentUserDto.setDateOfBirth(user.getDateOfBirth());
        currentUserDto.setIsAdmin(user.getIsAdmin());
        currentUserDto.setUsername(user.getUserName());
        currentUserDto.setEmail(user.getEmail());
        currentUserDto.setIsActive(user.getIsActive());

        if (user.getEducation() != null) {
            currentUserDto.setEducationId(user.getEducation().getId());
            currentUserDto.setEducationName(user.getEducation().getName());
        }

        if (user.getGander() != null) {
            currentUserDto.setGanderId(user.getGander().getId());
            currentUserDto.setGanderName(user.getGander().getName());
        }

        currentUserDto.setToken(authService.createToken(user));

        return currentUserDto;
    }
}
