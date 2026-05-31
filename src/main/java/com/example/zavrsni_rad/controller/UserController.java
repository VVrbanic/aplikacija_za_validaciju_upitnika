package com.example.zavrsni_rad.controller;

import com.example.zavrsni_rad.dto.CurrentUserDto;
import com.example.zavrsni_rad.dto.LoginDto;
import com.example.zavrsni_rad.dto.UpdateUserInfoDto;
import com.example.zavrsni_rad.dto.UserDto;
import com.example.zavrsni_rad.dto.UserInfoDto;
import com.example.zavrsni_rad.service.UserService;
import jakarta.validation.Valid;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/users")
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @PostMapping
    public ResponseEntity<?> create(@Valid @RequestBody UserDto model) {
        return userService.create(model);
    }

    @PostMapping("/login")
    public CurrentUserDto login(@Valid @RequestBody LoginDto model) {
        return userService.login(model);
    }

    @GetMapping("/me")
    public UserInfoDto me() {
        return userService.getCurrentUserInfo();
    }

    @PutMapping("/me")
    public ResponseEntity<UserInfoDto> updateMe(@Valid @RequestBody UpdateUserInfoDto model) {
        return ResponseEntity.ok(userService.updateCurrentUser(model));
    }

    @PostMapping("/logout")
    public ResponseEntity<Void> logout(@RequestHeader(value = "Authorization", required = false) String authorizationHeader) {
        userService.logout(authorizationHeader);
        return ResponseEntity.noContent().build();
    }

    @DeleteMapping("/me")
    public ResponseEntity<Void> deleteMe(@RequestHeader(value = "Authorization", required = false) String authorizationHeader) {
        userService.deactivateCurrentUser(authorizationHeader);
        return ResponseEntity.noContent().build();
    }
}
