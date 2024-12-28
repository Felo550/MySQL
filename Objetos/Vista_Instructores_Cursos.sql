USE CorcheaAcademyDB;

DROP VIEW IF EXISTS Vista_Instructores_Cursos;

CREATE VIEW Vista_Instructores_Cursos AS
SELECT
    i.id_instructor AS ID_Instructor,
    i.nombre AS Nombre_Instructor,
    i.apellido AS Apellido_Instructor,
    c.id_curso AS ID_Curso,
    c.nombre_curso AS Nombre_Curso
FROM
    Instructores i
JOIN Curso_Instructor ci ON i.id_instructor = ci.id_instructor
JOIN Cursos c ON ci.id_curso = c.id_curso;

-- Consulta de la vista
-- SELECT * FROM Vista_Instructores_Cursos;

/*
Descripción:
Esta vista muestra la relación entre instructores y los cursos que imparten, incluyendo el ID y nombre del instructor, y el ID y nombre del curso.
Objetivo:
Facilitar la consulta de qué instructor imparte cada curso, combinando datos de las tablas Instructores, Curso_Instructor y Cursos.

Tablas involucradas:
- Instructores
- Curso_Instructor
- Cursos
*/