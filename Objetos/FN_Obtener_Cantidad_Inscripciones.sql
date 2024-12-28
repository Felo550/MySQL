USE CorcheaAcademyDB;

DELIMITER $$

DROP FUNCTION IF EXISTS Calcular_Total_Pagos_Usuario$$

CREATE FUNCTION Calcular_Total_Pagos_Usuario(id_usuario_input INT)
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10, 2);
    
    -- Se suma el monto de las inscripciones del usuario
    SELECT SUM(p.monto) INTO total
    FROM Pagos p
    JOIN Inscripciones i ON p.id_inscripcion = i.id_inscripcion
    WHERE i.id_usuario = id_usuario_input;

    RETURN COALESCE(total, 0.00);
END$$

DELIMITER ;

-- Ejemplo de uso:
SELECT Calcular_Total_Pagos_Usuario(1) AS Total_Pagado;