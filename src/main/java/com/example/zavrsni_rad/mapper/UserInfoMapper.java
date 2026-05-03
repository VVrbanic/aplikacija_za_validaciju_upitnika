package com.example.zavrsni_rad.mapper;

import com.example.zavrsni_rad.dto.UserInfoDto;
import com.example.zavrsni_rad.entity.User;
import org.springframework.stereotype.Component;

@Component
public class UserInfoMapper {

    public UserInfoDto map(User user) {
        UserInfoDto dto = new UserInfoDto();
        dto.setId(user.getId());
        dto.setFirstName(user.getFirstName());
        dto.setLastName(user.getLastName());
        dto.setDateOfBirth(user.getDateOfBirth());
        dto.setIsAdmin(user.getIsAdmin());
        dto.setUserName(user.getUserName());
        dto.setEmail(user.getEmail());
        dto.setIsActive(user.getIsActive());

        if (user.getEducation() != null) {
            dto.setEducationId(user.getEducation().getId());
            dto.setEducationName(user.getEducation().getName());
        }

        if (user.getGander() != null) {
            dto.setGanderId(user.getGander().getId());
            dto.setGanderName(user.getGander().getName());
        }

        return dto;
    }
}
