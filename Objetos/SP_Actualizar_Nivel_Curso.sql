USE CorcheaAcademyDB;

DELIMITER $$

DROP PROCEDURE IF EXISTS SP_Actualizar_Nivel_Curso$$

CREATE PROCEDURE SP_Actualizar_Nivel_Curso(
    IN id_curso_input INT,
    IN id_nivel_nuevo INT
)
BEGIN
    -- Validar si el curso existe
    IF EXISTS (SELECT 1 FROM Cursos WHERE id_curso = id_curso_input) THEN
        -- Validar si el nivel nuevo existe
        IF EXISTS (SELECT 1 FROM Niveles WHERE id_nivel = id_nivel_nuevo) THEN
            -- Actualizar el nivel del curso
            UPDATE Cursos
            SET id_nivel = id_nivel_nuevo
            WHERE id_curso = id_curso_input;
        ELSE
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'El nivel especificado no existe.';
        END IF;
    ELSE
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El curso especificado no existe.';
    END IF;
END$$

DELIMITER ;

-- Ejemplo de uso:
-- CALL SP_Actualizar_Nivel_Curso(1, 2); -- Cambia el nivel del curso con ID 1 al nivel con ID 2

/*
Descripción:
Actualiza el nivel de un curso existente.
Objetivo:
Permitir la modificación del nivel de un curso, validando que tanto el curso como el nuevo nivel existan en la base de datos.

Tablas involucradas:
- Cursos
- Niveles
*/