USE CorcheaAcademyDB;

DROP VIEW IF EXISTS Vista_Lecciones_Por_Curso;

CREATE VIEW Vista_Lecciones_Por_Curso AS
SELECT
    c.id_curso AS ID_Curso,
    c.nombre_curso AS Nombre_Curso,
    l.id_leccion AS ID_Leccion,
    l.titulo_leccion AS Titulo_Leccion,
    l.orden AS Orden_Leccion
FROM
    Cursos c
JOIN Lecciones l ON c.id_curso = l.id_curso;

-- Consulta de la vista
-- SELECT * FROM Vista_Lecciones_Por_Curso;

/*
Descripción:
Esta vista muestra las lecciones asociadas a cada curso, incluyendo el ID y nombre del curso, y el ID, título y orden de la lección.
Objetivo:
Facilitar la consulta de las lecciones que componen cada curso, combinando datos de las tablas Cursos y Lecciones.

Tablas involucradas:
- Cursos
- Lecciones
*/