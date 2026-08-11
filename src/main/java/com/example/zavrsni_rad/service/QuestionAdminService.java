package com.example.zavrsni_rad.service;

import com.example.zavrsni_rad.dto.QuestionListItemDto;
import com.example.zavrsni_rad.entity.Answer;
import com.example.zavrsni_rad.entity.Question;
import com.example.zavrsni_rad.repository.AnswerRepository;
import com.example.zavrsni_rad.repository.QuestionRepository;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import jakarta.persistence.criteria.Predicate;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Service
public class QuestionAdminService {

    private final QuestionRepository questionRepository;
    private final AnswerRepository answerRepository;

    public QuestionAdminService(QuestionRepository questionRepository, AnswerRepository answerRepository) {
        this.questionRepository = questionRepository;
        this.answerRepository = answerRepository;
    }

    @Transactional(readOnly = true)
    public List<QuestionListItemDto> findQuestions(Integer categoryId, String text) {
        String normalizedText = text == null ? null : text.trim();
        if (normalizedText != null && normalizedText.isEmpty()) {
            normalizedText = null;
        }
        final String normalizedTextLambda = normalizedText;
        return questionRepository.findAll((root, query, cb) -> {
                    List<Predicate> predicates = new ArrayList<>();
                    predicates.add(cb.equal(root.get("active"), 1));

                    if (categoryId != null) {
                        predicates.add(cb.equal(root.get("catogoryId"), categoryId));
                    }

                    if (normalizedTextLambda != null) {
                        predicates.add(cb.like(
                                cb.lower(root.get("question")),
                                "%" + normalizedTextLambda.toLowerCase() + "%"
                        ));
                    }

                    return cb.and(predicates.toArray(new Predicate[0]));
                }, Sort.by(Sort.Direction.DESC, "id"))
                .stream()
                .map(question -> new QuestionListItemDto(
                        question.getId(),
                        question.getQuestion(),
                        question.getCatogoryId()
                ))
                .toList();
    }

    @Transactional
    public void deactivateQuestions(List<Integer> questionIds) {
        List<Integer> ids = questionIds == null
                ? List.of()
                : questionIds.stream()
                .filter(Objects::nonNull)
                .distinct()
                .toList();

        if (ids.isEmpty()) {
            throw new IllegalArgumentException("Odaberi barem jedno pitanje.");
        }

        List<Question> questions = questionRepository.findAllById(ids);
        if (questions.isEmpty()) {
            throw new IllegalArgumentException("Nijedno označeno pitanje nije pronađeno.");
        }

        questions.forEach(question -> question.setActive(0));
        questionRepository.saveAll(questions);

        List<Answer> answers = answerRepository.findAllByQuestionIdIn(ids);
        answers.forEach(answer -> answer.setActive(0));
        answerRepository.saveAll(answers);
    }
}
