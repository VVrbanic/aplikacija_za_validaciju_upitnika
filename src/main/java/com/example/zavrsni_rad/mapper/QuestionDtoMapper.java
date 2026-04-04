package com.example.zavrsni_rad.mapper;

import com.example.zavrsni_rad.dto.QuestionDto;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;
import org.springframework.lang.NonNull;

import java.sql.ResultSet;
import java.sql.SQLException;

@Component
public class QuestionDtoMapper implements RowMapper<QuestionDto> {

    @Override
    public QuestionDto mapRow(@NonNull ResultSet rs, int rowNum) throws SQLException {
        QuestionDto dto = new QuestionDto();
        return dto;
    }

}
