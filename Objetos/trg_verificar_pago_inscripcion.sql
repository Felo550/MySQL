USE CorcheaAcademyDB;

DELIMITER $$

DROP TRIGGER IF EXISTS trg_verificar_pago_inscripcion $$

CREATE TRIGGER trg_verificar_pago_inscripcion
BEFORE DELETE ON Inscripciones
FOR EACH ROW
BEGIN
    -- Verificar si existe un pago asociado a la inscripción
    IF EXISTS (SELECT 1 FROM Pagos WHERE id_inscripcion = OLD.id_inscripcion) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'No se puede eliminar la inscripción porque tiene un pago asociado.';
    END IF;
END $$

DELIMITER ;

/*
Descripción:
Este trigger impide la eliminación de una inscripción si existe un pago asociado a ella.
Objetivo:
Mantener la integridad de los datos, evitando la eliminación accidental de inscripciones que ya han sido pagadas.

Tabla involucrada:
- Inscripciones
- Pagos

Evento:
- BEFORE DELETE en Inscripciones
*/