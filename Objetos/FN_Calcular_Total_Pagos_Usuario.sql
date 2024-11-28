-- Creación de la función Calcular_Total_Pagos_Usuario
DELIMITER //
CREATE FUNCTION Calcular_Total_Pagos_Usuario(id_usuario_input INT)
RETURNS DECIMAL(10, 2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10, 2);
    SELECT SUM(monto) INTO total
    FROM Pagos
    WHERE id_usuario = id_usuario_input;
    RETURN COALESCE(total, 0.00);
END;
//
DELIMITER ;

-- Uso de la función
SELECT Calcular_Total_Pagos_Usuario(1) AS Total_Pagado;

/*
Descripción:
Calcula el monto total pagado por un usuario específico.
Objetivo:
Obtener el total de los pagos realizados por un usuario dado su id_usuario.
Tablas involucradas:
-Pagos
*/