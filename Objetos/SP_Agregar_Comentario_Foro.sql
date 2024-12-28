USE CorcheaAcademyDB;

DELIMITER $$

DROP PROCEDURE IF EXISTS SP_Agregar_Comentario_Foro$$

CREATE PROCEDURE SP_Agregar_Comentario_Foro(
    IN id_foro_input INT,
    IN id_usuario_input INT,
    IN comentario_input TEXT
)
BEGIN
    -- Validar si el foro existe
    IF EXISTS (SELECT 1 FROM Foros WHERE id_foro = id_foro_input) THEN
        -- Validar si el usuario existe
        IF EXISTS (SELECT 1 FROM Usuarios WHERE id_usuario = id_usuario_input) THEN
            -- Insertar el comentario en el foro
            INSERT INTO Comentarios_Foro (id_foro, id_usuario, comentario, fecha_comentario)
            VALUES (id_foro_input, id_usuario_input, comentario_input, NOW());
        ELSE
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'El usuario especificado no existe.';
        END IF;
    ELSE
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El foro especificado no existe.';
    END IF;
END$$

DELIMITER ;

-- Ejemplo de uso:
-- CALL SP_Agregar_Comentario_Foro(1, 1, 'Este es un comentario de prueba.');

/*
Descripción:
Agrega un nuevo comentario a un foro específico, realizado por un usuario dado.
Objetivo:
Simplificar la lógica para agregar un comentario, validando que el foro y el usuario existen.

Tablas involucradas:
- Foros
- Usuarios
- Comentarios_Foro
*/