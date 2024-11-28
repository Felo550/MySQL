-- Creación de la función Obtener_Cantidad_Inscripciones
CREATE FUNCTION Obtener_Cantidad_Inscripciones(id_usuario_input INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE cantidad INT;
    SELECT COUNT(*) INTO cantidad
    FROM Inscripciones
    WHERE id_usuario = id_usuario_input;
    RETURN cantidad;
END;

-- Uso de la función
-- SELECT Obtener_Cantidad_Inscripciones(1) AS Total_Inscripciones;

/*Descripción:
Devuelve la cantidad de inscripciones realizadas por un usuario específico.
Objetivo:
Conocer cuántos cursos ha inscrito un usuario por su id_usuario.
Tablas involucradas:
-Inscripciones
*/