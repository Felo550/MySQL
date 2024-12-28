USE CorcheaAcademyDB;

DROP VIEW IF EXISTS Vista_Comentarios_Foro;

CREATE VIEW Vista_Comentarios_Foro AS
SELECT
	f.id_foro AS ID_Foro,
    c.id_curso AS ID_Curso,
    c.nombre_curso AS Nombre_Curso,
    cf.id_comentario AS ID_Comentario,
    u.id_usuario AS ID_Usuario,
    u.nombre AS Nombre_Usuario,
    u.apellido AS Apellido_Usuario,
    cf.comentario AS Comentario,
    cf.fecha_comentario AS Fecha_Comentario
FROM
    Foros f
JOIN Comentarios_Foro cf ON f.id_foro = cf.id_foro
JOIN Usuarios u ON cf.id_usuario = u.id_usuario
JOIN Cursos c ON f.id_curso = c.id_curso;

-- Consulta de la vista
-- SELECT * FROM Vista_Comentarios_Foro;

/*
Descripción:
Esta vista muestra los comentarios realizados en los foros, incluyendo el ID del foro, el ID y nombre del curso al que pertenece el foro, el ID del comentario, el ID, nombre, y apellido del usuario que realizó el comentario, el contenido del comentario y la fecha en que se realizó.
Objetivo:
Facilitar la consulta de los comentarios en los foros, mostrando información consolidada de las tablas Foros, Comentarios_Foro, Usuarios y Cursos.

Tablas involucradas:
- Foros
- Comentarios_Foro
- Usuarios
- Cursos
*/