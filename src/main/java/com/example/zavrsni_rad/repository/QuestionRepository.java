package com.example.zavrsni_rad.repository;

import com.example.zavrsni_rad.entity.Question;
import org.springframework.data.jpa.repository.JpaRepository;

public interface QuestionRepository extends JpaRepository<Question, Integer> {
    long countByCatogoryId(Integer catogoryId);
}
