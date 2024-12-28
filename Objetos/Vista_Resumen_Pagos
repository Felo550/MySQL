USE CorcheaAcademyDB;

DROP VIEW IF EXISTS Vista_Resumen_Pagos;

CREATE VIEW Vista_Resumen_Pagos AS
SELECT
    p.id_pago AS ID_Pago,
    u.id_usuario AS ID_Usuario,
    u.nombre AS Nombre_Usuario,
    u.apellido AS Apellido_Usuario,
    c.id_curso AS ID_Curso,
    c.nombre_curso AS Nombre_Curso,
    p.monto AS Monto_Pagado,
    p.fecha_pago AS Fecha_Pago,
    p.metodo_pago AS Metodo_Pago
FROM
    Pagos p
JOIN Inscripciones i ON p.id_inscripcion = i.id_inscripcion
JOIN Usuarios u ON i.id_usuario = u.id_usuario
JOIN Cursos c ON i.id_curso = c.id_curso;

-- Consulta de la vista
-- SELECT * FROM Vista_Resumen_Pagos;

/*
Descripción:
Esta vista muestra un resumen de los pagos realizados, incluyendo información del usuario, el curso al que corresponde el pago, el monto, la fecha y el método de pago.
Objetivo:
Facilitar la consulta de los pagos realizados, mostrando información consolidada de las tablas Pagos, Inscripciones, Usuarios y Cursos.

Tablas involucradas:
- Pagos
- Inscripciones
- Usuarios
- Cursos
*/