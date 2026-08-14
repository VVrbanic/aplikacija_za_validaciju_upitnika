package com.example.zavrsni_rad.service;

import com.example.zavrsni_rad.dto.AdminResultsSummaryDto;
import com.example.zavrsni_rad.repository.AdminResultsRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class AdminResultsService {

    private final AdminResultsRepository adminResultsRepository;

    public AdminResultsService(AdminResultsRepository adminResultsRepository) {
        this.adminResultsRepository = adminResultsRepository;
    }

    @Transactional(readOnly = true)
    public AdminResultsSummaryDto getSummary() {
        return adminResultsRepository.getSummary();
    }
}
