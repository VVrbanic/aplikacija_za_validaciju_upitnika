package com.example.zavrsni_rad.repository;

import com.example.zavrsni_rad.entity.Question;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface QuestionRepository extends JpaRepository<Question, Integer>, JpaSpecificationExecutor<Question> {
    long countByCatogoryIdAndActive(Integer catogoryId, Integer active);
}
