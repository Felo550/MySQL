USE CorcheaAcademyDB;

DROP VIEW IF EXISTS Vista_Detalle_Cursos;

CREATE VIEW Vista_Detalle_Cursos AS
SELECT
    c.id_curso AS ID_Curso,
    c.nombre_curso AS Nombre_Curso,
    c.descripcion AS Descripcion,
    c.precio AS Precio,
    cat.nombre_categoria AS Categoria,
    n.nombre_nivel AS Nivel
FROM
    Cursos c
JOIN Categorias cat ON c.id_categoria = cat.id_categoria
JOIN Niveles n ON c.id_nivel = n.id_nivel;

-- Consulta de la vista
-- SELECT * FROM Vista_Detalle_Cursos;

/*
Descripción:
Esta vista muestra información detallada de los cursos, incluyendo el nombre del curso, descripción, precio, categoría y nivel.
Objetivo:
Facilitar la consulta rápida de información completa de los cursos, combinando datos de las tablas Cursos, Categorias y Niveles.

Tablas involucradas:
- Cursos
- Categorias
- Niveles
*/