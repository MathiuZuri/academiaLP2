package com.academiaspedropaulet.academia.dtos;

import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class MedioDTO {

    private Long idMedio;

    @NotNull(message = "El nombre del medio no puede ser nulo")
    private String nombreMedio;
}
