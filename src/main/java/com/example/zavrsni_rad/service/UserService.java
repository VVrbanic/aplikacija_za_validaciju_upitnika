package com.example.zavrsni_rad.service;

import com.example.zavrsni_rad.dto.CurrentUserDto;
import com.example.zavrsni_rad.dto.LoginDto;
import com.example.zavrsni_rad.dto.UpdateUserInfoDto;
import com.example.zavrsni_rad.dto.UserDto;
import com.example.zavrsni_rad.dto.UserInfoDto;
import com.example.zavrsni_rad.entity.Education;
import com.example.zavrsni_rad.entity.Gender;
import com.example.zavrsni_rad.entity.User;
import com.example.zavrsni_rad.mapper.CurrentUserMapper;
import com.example.zavrsni_rad.mapper.UserInfoMapper;
import com.example.zavrsni_rad.repository.EducationRepository;
import com.example.zavrsni_rad.repository.GenderRepository;
import com.example.zavrsni_rad.repository.UserRepository;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    private final CurrentUserService currentUserService;
    private final UserRepository userRepository;
    private final EducationRepository educationRepository;
    private final GenderRepository genderRepository;
    private final PasswordEncoder passwordEncoder;
    private final CurrentUserMapper currentUserMapper;
    private final UserInfoMapper userInfoMapper;

    public UserService(
            CurrentUserService currentUserService,
            UserRepository userRepository,
            EducationRepository educationRepository,
            GenderRepository genderRepository,
            PasswordEncoder passwordEncoder,
            CurrentUserMapper currentUserMapper,
            UserInfoMapper userInfoMapper
    ) {
        this.currentUserService = currentUserService;
        this.userRepository = userRepository;
        this.educationRepository = educationRepository;
        this.genderRepository = genderRepository;
        this.passwordEncoder = passwordEncoder;
        this.currentUserMapper = currentUserMapper;
        this.userInfoMapper = userInfoMapper;
    }

    public ResponseEntity<?> create(UserDto model) {
        if (userRepository.existsByUserName(model.getUserName())) {
            return ResponseEntity.badRequest().body("Korisnicko ime je zauzeto.");
        }
        if (userRepository.existsByEmail(model.getEmail())) {
            return ResponseEntity.badRequest().body("Email je vec u upotrebi.");
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

    public CurrentUserDto login(LoginDto model) {
        User user = userRepository.findByUserNameAndIsActiveTrue(model.getUserName())
                .orElseThrow(() -> new RuntimeException("Neispravni podaci"));

        if (!passwordEncoder.matches(model.getPassword(), user.getPassword())) {
            throw new RuntimeException("Neispravni podaci");
        }

        return currentUserMapper.map(user);
    }

    public UserInfoDto getCurrentUserInfo() {
        return userInfoMapper.map(currentUserService.getCurrentUser());
    }

    public UserInfoDto updateCurrentUser(UpdateUserInfoDto model) {
        User currentUser = currentUserService.getCurrentUser();

        if (!currentUser.getUserName().equals(model.getUserName()) && userRepository.existsByUserName(model.getUserName())) {
            throw new IllegalArgumentException("Korisnicko ime je zauzeto.");
        }

        if (!currentUser.getEmail().equals(model.getEmail()) && userRepository.existsByEmail(model.getEmail())) {
            throw new IllegalArgumentException("Email je vec u upotrebi.");
        }

        Education education = educationRepository.findById(model.getEducationId().longValue())
                .orElseThrow(() -> new IllegalArgumentException("Ne postoji stupanj_obrazovanja_id=" + model.getEducationId()));

        Gender gender = genderRepository.findById(model.getGanderId().longValue())
                .orElseThrow(() -> new IllegalArgumentException("Ne postoji spol_id=" + model.getGanderId()));

        currentUser.setFirstName(model.getFirstName());
        currentUser.setLastName(model.getLastName());
        currentUser.setDateOfBirth(model.getDateOfBirth());
        currentUser.setUserName(model.getUserName());
        currentUser.setEmail(model.getEmail());
        currentUser.setEducation(education);
        currentUser.setGander(gender);

        User saved = userRepository.save(currentUser);
        return userInfoMapper.map(saved);
    }
}
