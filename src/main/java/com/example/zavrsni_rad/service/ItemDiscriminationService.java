package com.example.zavrsni_rad.service;

import com.example.zavrsni_rad.dto.ItemDiscriminationDto;
import com.example.zavrsni_rad.repository.ItemDiscriminationRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ItemDiscriminationService {
    private final ItemDiscriminationRepository itemDiscriminationRepository;

    public ItemDiscriminationService(ItemDiscriminationRepository itemDiscriminationRepository) {
        this.itemDiscriminationRepository = itemDiscriminationRepository;
    }

    @Transactional(readOnly = true)
    public List<ItemDiscriminationDto> getCorrectedItemTotalCorrelations() {
        return itemDiscriminationRepository.getCorrectedItemTotalCorrelations();
    }
}
