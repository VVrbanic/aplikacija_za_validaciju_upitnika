package com.example.zavrsni_rad.repository;

import com.example.zavrsni_rad.entity.Answer;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Collection;
import java.util.List;

public interface AnswerRepository extends JpaRepository<Answer, Integer> {
    List<Answer> findAllByQuestionIdIn(Collection<Integer> questionIds);
}
