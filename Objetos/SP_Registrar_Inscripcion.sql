-- Creación del procedimiento almacenado Registrar_Inscripcion
CREATE PROCEDURE Registrar_Inscripcion(
    IN id_usuario_input INT,
    IN id_curso_input INT
)
BEGIN
    -- Validar si el usuario tiene el rol de estudiante
    IF EXISTS (
        SELECT 1 FROM Usuarios
        WHERE id_usuario = id_usuario_input AND id_rol = 3
    ) THEN
        -- Validar si el curso existe
        IF EXISTS (
            SELECT 1 FROM Cursos WHERE id_curso = id_curso_input
        ) THEN
            -- Insertar la inscripción
            INSERT INTO Inscripciones (id_usuario, id_curso, fecha_inscripcion)
            VALUES (id_usuario_input, id_curso_input, CURDATE());
        ELSE
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'El curso especificado no existe.';
        END IF;
    ELSE
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'El usuario no tiene permisos para inscribirse.';
    END IF;
END;


-- Uso del procedimiento
-- CALL Registrar_Inscripcion(1, 2);

/*

Descripción:
Inserta una nueva inscripción para un usuario y un curso específicos.
Objetivo:
Simplificar la lógica para registrar una inscripción, validando que el curso existe y que el usuario tiene un rol permitido (Estudiante).
Tablas involucradas:
-Usuarios
-Cursos
-Inscripciones

*/