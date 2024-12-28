USE CorcheaAcademyDB;

DELIMITER //

DROP FUNCTION IF EXISTS Obtener_Cantidad_Inscripciones;

CREATE FUNCTION Obtener_Cantidad_Inscripciones(id_usuario_input INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE cantidad INT;
    SELECT COUNT(*) INTO cantidad
    FROM Inscripciones
    WHERE id_usuario = id_usuario_input;
    RETURN cantidad;
END //

DELIMITER ;

-- Ejemplo de uso:
--SELECT Obtener_Cantidad_Inscripciones(1) AS Total_Inscripciones;