package com.example.zavrsni_rad.controller;

import com.example.zavrsni_rad.dto.CurrentUser;
import com.example.zavrsni_rad.dto.LoginDto;
import com.example.zavrsni_rad.dto.UserDto;
import com.example.zavrsni_rad.entity.Education;
import com.example.zavrsni_rad.entity.Gender;
import com.example.zavrsni_rad.entity.User;
import com.example.zavrsni_rad.repository.UserRepository;
import com.example.zavrsni_rad.repository.GenderRepository;
import com.example.zavrsni_rad.repository.EducationRepository;
import com.example.zavrsni_rad.service.UserService;
import jakarta.validation.Valid;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/users")
public class UserController {

    private final UserRepository userRepository;
    private final GenderRepository genderRepository;
    private final EducationRepository educationRepository;
    private final PasswordEncoder passwordEncoder;
    private final UserService userService;

    public UserController(UserRepository userRepository, GenderRepository genderRepository, EducationRepository educationRepository, PasswordEncoder passwordEncoder, UserService userService) {
        this.userRepository = userRepository;
        this.genderRepository = genderRepository;
        this.educationRepository = educationRepository;
        this.passwordEncoder = passwordEncoder;
        this.userService = userService;
    }


    @PostMapping()
    public ResponseEntity<?> create(@Valid @RequestBody UserDto model) {

        if (userRepository.existsByUserName(model.getUserName())) {
            return ResponseEntity.badRequest().body("Korisničko ime je zauzeto.");
        }
        if (userRepository.existsByEmail(model.getEmail())) {
            return ResponseEntity.badRequest().body("Email je već u upotrebi.");
        }

        Gender gender = genderRepository.findById(model.getGanderId().longValue())
                .orElseThrow(() -> new IllegalArgumentException("Ne postoji spol_id=" + model.getGanderId()));

        Education education = educationRepository.findById(model.getEducationId().longValue())
                .orElseThrow(() -> new IllegalArgumentException("Ne postoji stupanj_obrazovanja_id=" + model.getEducationId()));

        User user = new User();
        user.setFirstName(model.getFirstName());
        user.setLastName(model.getLastName());
        user.setDateOfBirth(model.getDateOfBirth());
        user.setUserName(model.getUserName());
        user.setEmail(model.getEmail());
        user.setPassword(passwordEncoder.encode(model.getPassword()));
        user.setIsAdmin(Boolean.TRUE.equals(model.getIsAdmin()) ? 1 : 0);
        user.setGander(gender);
        user.setEducation(education);

        User saved = userRepository.save(user);
        return ResponseEntity.ok(saved.getId());
    }

    @PostMapping("/login")
    public CurrentUser login(@Valid @RequestBody LoginDto model) {
        return userService.login(model);

    }
}
