package com.example.zavrsni_rad.dto;

import org.junit.jupiter.api.Test;

import java.beans.Introspector;
import java.util.Arrays;

import static org.junit.jupiter.api.Assertions.assertFalse;

class AdminResultsSummaryDtoTest {

    @Test
    void doesNotExposeStandardDeviationInResultsSummary() throws Exception {
        boolean exposesStandardDeviation = Arrays.stream(
                        Introspector.getBeanInfo(AdminResultsSummaryDto.class).getPropertyDescriptors())
                .anyMatch(property -> property.getName().equals("standardDeviation"));

        assertFalse(exposesStandardDeviation);
    }
}
