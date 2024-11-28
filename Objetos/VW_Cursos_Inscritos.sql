-- Creación de la vista Vista_Cursos_Inscritos
CREATE VIEW Vista_Cursos_Inscritos AS
SELECT 
    u.id_usuario AS ID_Usuario,
    u.nombre AS Nombre_Usuario,
    c.id_curso AS ID_Curso,
    c.nombre_curso AS Nombre_Curso,
    i.fecha_inscripcion AS Fecha_Inscripcion
FROM 
    Inscripciones i
JOIN Usuarios u ON i.id_usuario = u.id_usuario
JOIN Cursos c ON i.id_curso = c.id_curso;

-- Consulta de la vista
-- SELECT * FROM Vista_Cursos_Inscritos;

/*
Descripción:
Esta vista muestra los cursos en los que los usuarios están inscritos, incluyendo información del curso, el usuario inscrito y la fecha de inscripción.
Objetivo:
Facilitar la consulta rápida de las inscripciones, mostrando información consolidada de las tablas Usuarios, Cursos e Inscripciones.

Tablas involucradas:
-Usuarios
-Cursos
-Inscripciones

*/