package com.example.zavrsni_rad.service;


import com.example.zavrsni_rad.dto.CurrentUser;
import com.example.zavrsni_rad.dto.LoginDto;
import com.example.zavrsni_rad.entity.User;
import com.example.zavrsni_rad.mapper.CurrentUserMapper;
import com.example.zavrsni_rad.repository.UserRepository;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;
    private final CurrentUserMapper currentUserMapper;

    public UserService(UserRepository userRepository, PasswordEncoder passwordEncoder, CurrentUserMapper currentUserMapper) {
        this.userRepository = userRepository;
        this.passwordEncoder = passwordEncoder;
        this.currentUserMapper = currentUserMapper;
    }

    public CurrentUser login(LoginDto model) {
        User user = userRepository.findByUserNameAndIsActiveTrue(model.getUserName())
                .orElseThrow(() -> new RuntimeException("Neispravni podaci"));

        if (!passwordEncoder.matches(model.getPassword(), user.getPassword())) {
            throw new RuntimeException("Neispravni podaci");
        }

        return currentUserMapper.map(user);
    }

}
