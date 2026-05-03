package com.example.zavrsni_rad.repository;
import com.example.zavrsni_rad.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.EntityGraph;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {

    boolean existsByUserName(String userName);
    boolean existsByEmail(String email);

    @EntityGraph(attributePaths = {"education", "gander"})
    Optional<User> findByUserNameAndIsActiveTrue(String userName);
}

