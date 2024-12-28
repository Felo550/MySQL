USE CorcheaAcademyDB;

DELIMITER $$

DROP TRIGGER IF EXISTS trg_registrar_fecha_completado $$

CREATE TRIGGER trg_registrar_fecha_completado
BEFORE UPDATE ON Progreso_Leccion
FOR EACH ROW
BEGIN
    -- Registrar la fecha y hora actuales cuando se actualiza el estado a 'Completado'
    IF NEW.fecha_completado IS NOT NULL AND OLD.fecha_completado IS NULL THEN
        SET NEW.fecha_completado = NOW();
    END IF;
END $$

DELIMITER ;

/*
Descripción:
Este trigger registra la fecha y hora actuales en el campo `fecha_completado` de la tabla `Progreso_Leccion` cuando un estudiante completa una lección.
Objetivo:
Automatizar el registro de la fecha de finalización de una lección, facilitando el seguimiento del progreso del estudiante.

Tabla involucrada:
- Progreso_Leccion

Evento:
- BEFORE UPDATE en Progreso_Leccion
*/