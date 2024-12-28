USE CorcheaAcademyDB;

-- Población de la tabla Roles
INSERT INTO Roles (nombre_rol) VALUES
('Administrador'),
('Instructor'),
('Estudiante'),
('Invitado'),
('Editor'),
('Moderador'),
('Coordinador'),
('Soporte Técnico'),
('Gestor de Contenido'),
('Visitante');

-- Población de la tabla Categorias
INSERT INTO Categorias (nombre_categoria) VALUES
('Bajo'),
('Batería'),
('Piano'),
('Técnica Vocal'),
('Guitarra'),
('Producción Musical'),
('Composición'),
('DJing'),
('Teoría Musical'),
('Improvisación');

-- Población de la tabla Niveles
INSERT INTO Niveles (nombre_nivel) VALUES
('Principiante'),
('Intermedio'),
('Avanzado');

-- Población de la tabla Paises
INSERT INTO Paises (nombre_pais) VALUES
('Argentina'),
('España'),
('México'),
('Colombia'),
('Estados Unidos'),
('Otro');

-- Población de la tabla Ciudades
INSERT INTO Ciudades (id_pais, nombre_ciudad) VALUES
(1, 'Buenos Aires'),
(1, 'Córdoba'),
(2, 'Madrid'),
(2, 'Barcelona'),
(3, 'Ciudad de México'),
(3, 'Guadalajara'),
(4, 'Bogotá'),
(4, 'Medellín'),
(5, 'Nueva York'),
(5, 'Los Ángeles'),
(6, 'Otra');

-- Población de la tabla Usuarios
INSERT INTO Usuarios (nombre, apellido, email, contraseña, fecha_registro, id_rol) VALUES
('Carlos', 'Pérez', 'carlos.perez@gmail.com', 'pass1234', '2023-10-01', 3),
('Ana', 'López', 'ana.lopez@gmail.com', 'pass1234', '2023-09-15', 2),
('Luis', 'García', 'luis.garcia@gmail.com', 'pass1234', '2023-08-20', 1),
('María', 'Torres', 'maria.torres@gmail.com', 'pass1234', '2023-09-10', 3),
('Pedro', 'Sánchez', 'pedro.sanchez@gmail.com', 'pass1234', '2023-09-05', 2),
('Sandra', 'Ruiz', 'sandra.ruiz@gmail.com', 'pass1234', '2023-08-30', 3),
('Juan', 'Martínez', 'juan.martinez@gmail.com', 'pass1234', '2023-09-25', 3),
('Lucía', 'Gómez', 'lucia.gomez@gmail.com', 'pass1234', '2023-09-01', 3),
('Raúl', 'Díaz', 'raul.diaz@gmail.com', 'pass1234', '2023-10-02', 3),
('Elena', 'Romero', 'elena.romero@gmail.com', 'pass1234', '2023-09-12', 3),
('Administrador', 'Principal', 'admin@corcheaacademy.com', 'adminpass', '2023-01-01', 1),
('Roberto', 'Gomez', 'roberto.gomez@gmail.com', 'pass1234', '2023-09-15', 3),
('Laura', 'Fernandez', 'laura.fernandez@gmail.com', 'pass1234', '2023-09-18', 3),
('Miguel', 'Herrera', 'miguel.herrera@gmail.com', 'pass1234', '2023-09-20', 3),
('Sofia', 'Vargas', 'sofia.vargas@gmail.com', 'pass1234', '2023-09-22', 3),
('Javier', 'Medina', 'javier.medina@gmail.com', 'pass1234', '2023-09-25', 3),
('Isabel', 'Castro', 'isabel.castro@gmail.com', 'pass1234', '2023-09-28', 3),
('Alejandro', 'Ortega', 'alejandro.ortega@gmail.com', 'pass1234', '2023-10-01', 3),
('Carmen', 'Silva', 'carmen.silva@gmail.com', 'pass1234', '2023-10-03', 3),
('Ricardo', 'Navarro', 'ricardo.navarro@gmail.com', 'pass1234', '2023-10-05', 3);

-- Población de la tabla Cursos
INSERT INTO Cursos (nombre_curso, descripcion, precio, fecha_creacion, id_categoria, id_nivel) VALUES
('Aprende Bajo Básico', 'Curso introductorio para aprender bajo eléctrico', 49.99, '2023-09-01', 1, 1),
('Técnicas Avanzadas de Batería', 'Curso avanzado de ritmos y fills en batería', 79.99, '2023-08-15', 2, 3),
('Piano para Principiantes', 'Introducción a acordes y escalas en piano', 59.99, '2023-07-20', 3, 1),
('Técnica Vocal Nivel 1', 'Técnicas básicas para mejorar la voz', 39.99, '2023-06-25', 4, 1),
('Composición Musical', 'Aprende a componer canciones desde cero', 99.99, '2023-08-10', 7, 2),
('Producción Musical en DAW', 'Domina el software de producción musical', 119.99, '2023-09-15', 6, 3),
('Improvisación en Jazz', 'Técnicas de improvisación en jazz', 89.99, '2023-08-30', 9, 2),
('DJing para Principiantes', 'Curso básico para ser DJ', 69.99, '2023-07-05', 8, 1),
('Teoría Musical Completa', 'Curso completo de teoría musical', 109.99, '2023-09-20', 9, 3),
('Batería para Niños', 'Curso introductorio de batería para niños', 29.99, '2023-10-01', 2, 1),
('Guitarra Acústica Intermedia', 'Progresiones de acordes y arpegios', 69.99, '2023-09-10', 5, 2),
('Mezcla y Masterización', 'Técnicas profesionales de mezcla y masterización', 129.99, '2023-09-15', 6, 3),
('Armonía Moderna', 'Conceptos avanzados de armonía musical', 79.99, '2023-09-20', 7, 2),
('Sintetizadores y Diseño de Sonido', 'Crea tus propios sonidos con sintetizadores', 89.99, '2023-09-25', 6, 2),
('Canto para Musicales', 'Técnicas de canto aplicadas a teatro musical', 49.99, '2023-10-01', 4, 2),
('Introducción a la Orquestación', 'Aprende a escribir música para orquesta', 99.99, '2023-10-05', 7, 3),
('Guitarra Eléctrica Blues', 'Fundamentos del blues en guitarra eléctrica', 59.99, '2023-10-10', 5, 2),
('Producción de Música Electrónica', 'Crea música electrónica desde cero', 109.99, '2023-10-15', 6, 3),
('Piano Jazz', 'Acordes y escalas para improvisación en jazz', 79.99, '2023-10-20', 3, 2),
('Técnicas de Grabación en Estudio', 'Aprende a grabar instrumentos y voces', 89.99, '2023-10-25', 6, 2);

-- Población de la tabla Inscripciones
INSERT INTO Inscripciones (id_usuario, id_curso, fecha_inscripcion) VALUES
(1, 1, '2023-10-05'),
(2, 2, '2023-09-20'),
(3, 3, '2023-08-25'),
(4, 4, '2023-09-12'),
(5, 5, '2023-09-18'),
(6, 6, '2023-09-25'),
(7, 7, '2023-09-30'),
(8, 8, '2023-10-02'),
(9, 9, '2023-10-05'),
(10, 10, '2023-10-10'),
(12, 1, '2023-10-06'),
(13, 3, '2023-10-07'),
(14, 5, '2023-10-08'),
(15, 7, '2023-10-09'),
(16, 9, '2023-10-10'),
(17, 11, '2023-10-11'),
(18, 13, '2023-10-12'),
(19, 15, '2023-10-13'),
(20, 17, '2023-10-14'),
(1, 12, '2023-10-06'),
(3, 14, '2023-10-07'),
(5, 16, '2023-10-08'),
(7, 18, '2023-10-09'),
(9, 20, '2023-10-10'),
(11, 2, '2023-10-11'),
(13, 4, '2023-10-12'),
(15, 6, '2023-10-13'),
(17, 8, '2023-10-14');

-- Población de la tabla Pagos
INSERT INTO Pagos (id_inscripcion, monto, fecha_pago, metodo_pago) VALUES
(1, 49.99, '2023-10-06', 'Tarjeta de Crédito'),
(2, 79.99, '2023-09-21', 'PayPal'),
(3, 59.99, '2023-08-26', 'Transferencia Bancaria'),
(4, 39.99, '2023-09-13', 'Tarjeta de Crédito'),
(5, 99.99, '2023-09-19', 'PayPal'),
(6, 119.99, '2023-09-26', 'Transferencia Bancaria'),
(7, 89.99, '2023-10-01', 'PayPal'),
(8, 69.99, '2023-10-03', 'Tarjeta de Crédito'),
(9, 109.99, '2023-10-06', 'Transferencia Bancaria'),
(10, 29.99, '2023-10-11', 'PayPal'),
(11, 49.99, '2023-10-07', 'Tarjeta de Crédito'),
(12, 59.99, '2023-10-08', 'PayPal'),
(13, 99.99, '2023-10-09', 'Tarjeta de Crédito'),
(14, 79.99, '2023-10-10', 'Transferencia Bancaria'),
(15, 69.99, '2023-10-11', 'PayPal'),
(16, 129.99, '2023-10-12', 'Tarjeta de Crédito'),
(17, 79.99, '2023-10-13', 'Transferencia Bancaria'),
(18, 89.99, '2023-10-14', 'PayPal'),
(19, 49.99, '2023-10-15', 'Tarjeta de Crédito'),
(20, 69.99, '2023-10-07', 'Transferencia Bancaria'),
(21, 79.99, '2023-10-08', 'PayPal'),
(22, 89.99, '2023-10-09', 'Tarjeta de Crédito'),
(23, 109.99, '2023-10-10', 'Transferencia Bancaria'),
(24, 79.99, '2023-10-11', 'PayPal'),
(25, 39.99, '2023-10-12', 'Tarjeta de Crédito'),
(26, 119.99, '2023-10-13', 'Transferencia Bancaria'),
(27, 69.99, '2023-10-14', 'PayPal'),
(28, 99.99, '2023-10-15', 'Tarjeta de Crédito');

-- Población de la tabla Instructores
INSERT INTO Instructores (nombre, apellido, especialidad, email) VALUES
('Pedro', 'Sánchez', 'Bajo Eléctrico', 'pedro.sanchez.instructor@gmail.com'),
('Ana', 'López', 'Batería', 'ana.lopez.instructor@gmail.com'),
('María', 'Torres', 'Técnica Vocal', 'maria.torres.instructor@gmail.com'),
('Pablo', 'Iglesias', 'Guitarra', 'pablo.iglesias.instructor@gmail.com'),
('Luisa', 'Ramirez', 'Piano', 'luisa.ramirez.instructor@gmail.com'),
('Jorge', 'Silva', 'Producción Musical', 'jorge.silva.instructor@gmail.com'),
('Clara', 'Mendoza', 'Composición', 'clara.mendoza.instructor@gmail.com'),
('Diego', 'Fuentes', 'DJing', 'diego.fuentes.instructor@gmail.com'),
('Mariana', 'Ortega', 'Teoría Musical', 'mariana.ortega.instructor@gmail.com'),
('Fernando', 'Soto', 'Improvisación', 'fernando.soto.instructor@gmail.com');

-- Población de la tabla Curso_Instructor
INSERT INTO Curso_Instructor (id_curso, id_instructor) VALUES
(1, 1),
(2, 2),
(3, 5),
(4, 3),
(5, 7),
(6, 6),
(7, 10),
(8, 8),
(9, 9),
(10, 2),
(11, 4),
(12, 6),
(13, 9),
(14, 6),
(15, 3),
(16, 7),
(17, 4),
(18, 6),
(19, 5),
(20, 6);


-- Población de la tabla Lecciones
INSERT INTO Lecciones (id_curso, titulo_leccion, contenido_leccion, orden) VALUES
-- Lecciones para el curso con id_curso = 1
(1, 'Introducción al Bajo', 'Contenido de la lección 1 para el curso 1', 1),
(1, 'Postura y Técnica', 'Contenido de la lección 2 para el curso 1', 2),
-- Lecciones para el curso con id_curso = 2
(2, 'Rudimentos Esenciales', 'Contenido de la lección 1 para el curso 2', 1),
(2, 'Control de Baquetas', 'Contenido de la lección 2 para el curso 2', 2),
-- Lecciones para el curso con id_curso = 3
(3, 'Introducción al Piano', 'Contenido de la lección 1 para el curso 3', 1),
(3, 'Acordes Mayores y Menores', 'Contenido de la lección 2 para el curso 3', 2),
-- Lecciones para el curso con id_curso = 4
(4, 'Técnicas de Respiración', 'Contenido de la lección 1 para el curso 4', 1),
(4, 'Calentamiento Vocal', 'Contenido de la lección 2 para el curso 4', 2),
-- Lecciones para el curso con id_curso = 5
(5, 'Análisis de Canciones', 'Contenido de la lección 1 para el curso 5', 1),
(5, 'Creación de Melodías', 'Contenido de la lección 2 para el curso 5', 2),
-- Lecciones para el curso con id_curso = 6
(6, 'Fundamentos de DAWs', 'Contenido de la lección 1 para el curso 6', 1),
(6, 'Grabación y Edición', 'Contenido de la lección 2 para el curso 6', 2),
-- Lecciones para el curso con id_curso = 7
(7, 'Técnicas de Improvisación', 'Contenido de la lección 1 para el curso 7', 1),
(7, 'Modos Griegos', 'Contenido de la lección 2 para el curso 7', 2),
-- Lecciones para el curso con id_curso = 8
(8, 'Introducción al DJing', 'Contenido de la lección 1 para el curso 8', 1),
(8, 'Beatmatching', 'Contenido de la lección 2 para el curso 8', 2),
-- Lecciones para el curso con id_curso = 9
(9, 'Intervalos y Acordes', 'Contenido de la lección 1 para el curso 9', 1),
(9, 'Armonía Funcional', 'Contenido de la lección 2 para el curso 9', 2),
-- Lecciones para el curso con id_curso = 10
(10, 'Ritmos para Niños', 'Contenido de la lección 1 para el curso 10', 1),
(10, 'Coordinación Básica', 'Contenido de la lección 2 para el curso 10', 2),
-- Lecciones para el curso con id_curso = 11
(11, 'Acordes con Cejilla', 'Contenido de la lección 1 para el curso 11', 1),
(11, 'Arpegios', 'Contenido de la lección 2 para el curso 11', 2),
-- Lecciones para el curso con id_curso = 12
(12, 'Ecualización', 'Contenido de la lección 1 para el curso 12', 1),
(12, 'Compresión', 'Contenido de la lección 2 para el curso 12', 2),
-- Lecciones para el curso con id_curso = 13
(13, 'Armonía por Terceras', 'Contenido de la lección 1 para el curso 13', 1),
(13, 'Progresiones de Acordes', 'Contenido de la lección 2 para el curso 13', 2),
-- Lecciones para el curso con id_curso = 14
(14, 'Tipos de Sintetizadores', 'Contenido de la lección 1 para el curso 14', 1),
(14, 'Diseño de Sonido', 'Contenido de la lección 2 para el curso 14', 2),
-- Lecciones para el curso con id_curso = 15
(15, 'Técnica Vocal para Musicales', 'Contenido de la lección 1 para el curso 15', 1),
(15, 'Interpretación Escénica', 'Contenido de la lección 2 para el curso 15', 2),
-- Lecciones para el curso con id_curso = 16
(16, 'Introducción a la Orquestación', 'Contenido de la lección 1 para el curso 16', 1),
(16, 'Instrumentación', 'Contenido de la lección 2 para el curso 16', 2),
-- Lecciones para el curso con id_curso = 17
(17, 'Licks de Blues', 'Contenido de la lección 1 para el curso 17', 1),
(17, 'Improvisación en Blues', 'Contenido de la lección 2 para el curso 17', 2),
-- Lecciones para el curso con id_curso = 18
(18, 'Producción de Beats', 'Contenido de la lección 1 para el curso 18', 1),
(18, 'Sampling', 'Contenido de la lección 2 para el curso 18', 2),
-- Lecciones para el curso con id_curso = 19
(19, 'Acordes de Jazz', 'Contenido de la lección 1 para el curso 19', 1),
(19, 'Escalas para Jazz', 'Contenido de la lección 2 para el curso 19', 2),
-- Lecciones para el curso con id_curso = 20
(20, 'Microfonía', 'Contenido de la lección 1 para el curso 20', 1),
(20, 'Técnicas de Grabación', 'Contenido de la lección 2 para el curso 20', 2);


-- Población de la tabla Progreso_Leccion
INSERT INTO Progreso_Leccion (id_inscripcion, id_leccion, fecha_completado) VALUES
-- Progreso para la inscripción con id_inscripcion = 1 (Curso 1, Lecciones 1 y 2)
(1, 1, '2023-10-06'),
(1, 2, '2023-10-08'),
-- Progreso para la inscripción con id_inscripcion = 2 (Curso 2, Lecciones 3 y 4)
(2, 3, '2023-09-22'),
(2, 4, '2023-09-24'),
-- Progreso para la inscripción con id_inscripcion = 3 (Curso 3, Lecciones 5 y 6)
(3, 5, '2023-08-28'),
(3, 6, '2023-08-30'),
-- Progreso para la inscripción con id_inscripcion = 4 (Curso 4, Lecciones 7 y 8)
(4, 7, '2023-09-15'),
(4, 8, '2023-09-17'),
-- Progreso para la inscripción con id_inscripcion = 5 (Curso 5, Lecciones 9 y 10)
(5, 9, '2023-09-21'),
(5, 10, '2023-09-23'),
-- Progreso para la inscripción con id_inscripcion = 6 (Curso 6, Lecciones 11 y 12)
(6, 11, '2023-09-28'),
(6, 12, '2023-09-30'),
-- Progreso para la inscripción con id_inscripcion = 7 (Curso 7, Lecciones 13 y 14)
(7, 13, '2023-10-03'),
(7, 14, '2023-10-05'),
-- Progreso para la inscripción con id_inscripcion = 8 (Curso 8, Lecciones 15 y 16)
(8, 15, '2023-10-05'),
(8, 16, '2023-10-07'),
-- Progreso para la inscripción con id_inscripcion = 9 (Curso 9, Lecciones 17 y 18)
(9, 17, '2023-10-08'),
(9, 18, '2023-10-10'),
-- Progreso para la inscripción con id_inscripcion = 10 (Curso 10, Lecciones 19 y 20)
(10, 19, '2023-10-13'),
(10, 20, '2023-10-15'),
-- Progreso para la inscripción con id_inscripcion = 11 (Curso 1, Lecciones 1 y 2)
(11, 1, '2023-10-08'),
(11, 2, '2023-10-10'),
-- Progreso para la inscripción con id_inscripcion = 12 (Curso 12, Lecciones 23 y 24)
(12, 23, '2023-10-09'),
(12, 24, '2023-10-11'),
-- Progreso para la inscripción con id_inscripcion = 13 (Curso 14, Lecciones 27 y 28)
(13, 27, '2023-10-10'),
(13, 28, '2023-10-12'),
-- Progreso para la inscripción con id_inscripcion = 14 (Curso 16, Lecciones 31 y 32)
(14, 31, '2023-10-11'),
(14, 32, '2023-10-13'),
-- Progreso para la inscripción con id_inscripcion = 15 (Curso 18, Lecciones 35 y 36)
(15, 35, '2023-10-12'),
(15, 36, '2023-10-14'),
-- Progreso para la inscripción con id_inscripcion = 16 (Curso 20, Lecciones 39 y 40)
(16, 39, '2023-10-13'),
(16, 40, '2023-10-15'),
-- Progreso para la inscripción con id_inscripcion = 17 (Curso 2, Lecciones 3 y 4)
(17, 3, '2023-10-14'),
(17, 4, '2023-10-16'),
-- Progreso para la inscripción con id_inscripcion = 18 (Curso 4, Lecciones 7 y 8)
(18, 7, '2023-10-15'),
(18, 8, '2023-10-17'),
-- Progreso para la inscripción con id_inscripcion = 19 (Curso 6, Lecciones 11 y 12)
(19, 11, '2023-10-16'),
(19, 12, '2023-10-18'),
-- Progreso para la inscripción con id_inscripcion = 20 (Curso 8, Lecciones 15 y 16)
(20, 15, '2023-10-08'),
(20, 16, '2023-10-10'),
-- Progreso para la inscripción con id_inscripcion = 21 (Curso 10, Lecciones 19 y 20)
(21, 19, '2023-10-09'),
(21, 20, '2023-10-11'),
-- Progreso para la inscripción con id_inscripcion = 22 (Curso 11, Lecciones 21 y 22)
(22, 21, '2023-10-10'),
(22, 22, '2023-10-12'),
-- Progreso para la inscripción con id_inscripcion = 23 (Curso 13, Lecciones 25 y 26)
(23, 25, '2023-10-11'),
(23, 26, '2023-10-13'),
-- Progreso para la inscripción con id_inscripcion = 24 (Curso 15, Lecciones 29 y 30)
(24, 29, '2023-10-12'),
(24, 30, '2023-10-14'),
-- Progreso para la inscripción con id_inscripcion = 25 (Curso 17, Lecciones 33 y 34)
(25, 33, '2023-10-13'),
(25, 34, '2023-10-15'),
-- Progreso para la inscripción con id_inscripcion = 26 (Curso 19, Lecciones 37 y 38)
(26, 37, '2023-10-14'),
(26, 38, '2023-10-16'),
-- Progreso para la inscripción con id_inscripcion = 27 (Curso 3, Lecciones 5 y 6)
(27, 5, '2023-10-15'),
(27, 6, '2023-10-17'),
-- Progreso para la inscripción con id_inscripcion = 28 (Curso 5, Lecciones 9 y 10)
(28, 9, '2023-10-16'),
(28, 10, '2023-10-18');


-- Población de la tabla Recursos (Corregido)
INSERT INTO Recursos (id_leccion, nombre_recurso, tipo_recurso, url_recurso) VALUES
(1, 'PDF de Introducción al Bajo', 'PDF', 'http://ejemplo.com/recurso1.pdf'),
(3, 'Audio de Rudimentos', 'Audio', 'http://ejemplo.com/recurso2.mp3'),
(5, 'Video de Acordes Básicos', 'Video', 'http://ejemplo.com/recurso3.mp4'),
(7, 'PDF de Ejercicios de Respiración', 'PDF', 'http://ejemplo.com/recurso4.pdf'),
(9, 'Audio de Estructura de una Canción', 'Audio', 'http://ejemplo.com/recurso5.mp3'),
(11, 'Video de Introducción a la Interfaz', 'Video', 'http://ejemplo.com/recurso6.mp4'),
(13, 'PDF de Escalas y Modos', 'PDF', 'http://ejemplo.com/recurso7.pdf'),
(15, 'Audio de Configuración del Equipo', 'Audio', 'http://ejemplo.com/recurso8.mp3'),
(17, 'Video de Conceptos Básicos', 'Video', 'http://ejemplo.com/recurso9.mp4'),
(19, 'PDF de Ritmos Básicos', 'PDF', 'http://ejemplo.com/recurso10.pdf'),
(21, 'Audio de Acordes y Arpegios', 'Audio', 'http://ejemplo.com/recurso11.mp3'),
(23, 'Video de Técnicas de Mezcla', 'Video', 'http://ejemplo.com/recurso12.mp4'),
(25, 'PDF de Armonía Diatónica', 'PDF', 'http://ejemplo.com/recurso13.pdf'),
(27, 'Audio de Síntesis Sustractiva', 'Audio', 'http://ejemplo.com/recurso14.mp3'),
(29, 'Video de Técnicas de Interpretación', 'Video', 'http://ejemplo.com/recurso15.mp4'),
(31, 'PDF de Escritura para Cuerdas', 'PDF', 'http://ejemplo.com/recurso16.pdf'),
(33, 'Audio de Escalas de Blues', 'Audio', 'http://ejemplo.com/recurso17.mp3'),
(35, 'Video de Efectos y Procesamiento', 'Video', 'http://ejemplo.com/recurso18.mp4'),
(37, 'Audio de Progresiones de Acordes', 'Audio', 'http://ejemplo.com/recurso19.mp3'),
(39, 'Video de Técnicas de Microfoneo', 'Video', 'http://ejemplo.com/recurso20.mp4');


-- Población de la tabla Certificados
INSERT INTO Certificados (id_inscripcion, fecha_emision, url_certificado) VALUES
(1, '2023-10-15', 'http://ejemplo.com/certificado1.pdf'),
(2, '2023-09-30', 'http://ejemplo.com/certificado2.pdf'),
(3, '2023-09-05', 'http://ejemplo.com/certificado3.pdf'),
(4, '2023-09-25', 'http://ejemplo.com/certificado4.pdf'),
(5, '2023-10-01', 'http://ejemplo.com/certificado5.pdf'),
(6, '2023-10-10', 'http://ejemplo.com/certificado6.pdf'),
(7, '2023-10-15', 'http://ejemplo.com/certificado7.pdf'),
(8, '2023-10-20', 'http://ejemplo.com/certificado8.pdf'),
(9, '2023-10-25', 'http://ejemplo.com/certificado9.pdf'),
(10, '2023-10-30', 'http://ejemplo.com/certificado10.pdf'),
(11, '2023-10-18', 'http://ejemplo.com/certificado11.pdf'),
(12, '2023-10-19', 'http://ejemplo.com/certificado12.pdf'),
(13, '2023-10-20', 'http://ejemplo.com/certificado13.pdf'),
(14, '2023-10-21', 'http://ejemplo.com/certificado14.pdf'),
(15, '2023-10-22', 'http://ejemplo.com/certificado15.pdf'),
(16, '2023-10-23', 'http://ejemplo.com/certificado16.pdf'),
(17, '2023-10-24', 'http://ejemplo.com/certificado17.pdf'),
(18, '2023-10-25', 'http://ejemplo.com/certificado18.pdf'),
(19, '2023-10-26', 'http://ejemplo.com/certificado19.pdf'),
(20, '2023-10-27', 'http://ejemplo.com/certificado20.pdf'),
(21, '2023-10-28', 'http://ejemplo.com/certificado21.pdf'),
(22, '2023-10-29', 'http://ejemplo.com/certificado22.pdf'),
(23, '2023-10-30', 'http://ejemplo.com/certificado23.pdf'),
(24, '2023-10-31', 'http://ejemplo.com/certificado24.pdf'),
(25, '2023-11-01', 'http://ejemplo.com/certificado25.pdf'),
(26, '2023-11-02', 'http://ejemplo.com/certificado26.pdf'),
(27, '2023-11-03', 'http://ejemplo.com/certificado27.pdf'),
(28, '2023-11-04', 'http://ejemplo.com/certificado28.pdf');


-- Población de la tabla Foros
INSERT INTO Foros (id_curso, nombre_foro) VALUES
(1, 'Foro de Introducción al Bajo'),
(2, 'Foro de Técnicas Avanzadas de Batería'),
(3, 'Foro de Piano para Principiantes'),
(4, 'Foro de Técnica Vocal Nivel 1'),
(5, 'Foro de Composición Musical'),
(6, 'Foro de Producción Musical en DAW'),
(7, 'Foro de Improvisación en Jazz'),
(8, 'Foro de DJing para Principiantes'),
(9, 'Foro de Teoría Musical Completa'),
(10, 'Foro de Batería para Niños'),
(11, 'Foro de Guitarra Acústica Intermedia'),
(12, 'Foro de Mezcla y Masterización'),
(13, 'Foro de Armonía Moderna'),
(14, 'Foro de Sintetizadores y Diseño de Sonido'),
(15, 'Foro de Canto para Musicales'),
(16, 'Foro de Introducción a la Orquestación'),
(17, 'Foro de Guitarra Eléctrica Blues'),
(18, 'Foro de Producción de Música Electrónica'),
(19, 'Foro de Piano Jazz'),
(20, 'Foro de Técnicas de Grabación en Estudio');


-- Población de la tabla Comentarios_Foro
INSERT INTO Comentarios_Foro (id_foro, id_usuario, comentario, fecha_comentario) VALUES
(1, 1, '¡Excelente curso! He aprendido mucho sobre la introducción al bajo.', '2023-10-07'),
(1, 12, 'Tengo una duda sobre la postura correcta. ¿Podrían ayudarme?', '2023-10-08'),
(2, 2, 'Este curso de batería es justo lo que necesitaba. ¡Gracias!', '2023-09-23'),
(2, 14, '¿Alguien sabe cómo mejorar la velocidad en los redobles?', '2023-09-25'),
(3, 3, 'Me encantan las lecciones de piano. Son muy claras y fáciles de seguir.', '2023-08-30'),
(3, 16, '¿Qué tipo de piano recomiendan para principiantes?', '2023-09-02'),
(4, 4, 'Los ejercicios de respiración me han ayudado mucho con mi técnica vocal.', '2023-09-18'),
(4, 18, '¿Cómo puedo aumentar mi rango vocal?', '2023-09-20'),
(5, 5, 'Componer canciones es un desafío, pero este curso lo hace más fácil.', '2023-09-25'),
(5, 20, 'Estoy atascado en la parte del puente de mi canción. ¿Algún consejo?', '2023-09-28'),
(6, 6, 'El curso de producción musical es muy completo. Lo recomiendo.', '2023-10-02'),
(6, 11, '¿Qué DAW recomiendan para empezar?', '2023-10-05'),
(7, 7, 'La improvisación en jazz es un arte. Gracias por las lecciones.', '2023-10-08'),
(7, 13, '¿Cómo puedo mejorar mi fraseo en jazz?', '2023-10-10'),
(8, 8, 'Ser DJ es mi sueño, y este curso me está ayudando a lograrlo.', '2023-10-10'),
(8, 15, '¿Qué equipo es esencial para un DJ principiante?', '2023-10-12'),
(9, 9, 'La teoría musical es fundamental. Este curso es excelente.', '2023-10-12'),
(9, 17, 'Tengo problemas para entender los modos griegos. ¿Alguien me explica?', '2023-10-15'),
(10, 10, 'Mi hijo está disfrutando mucho las clases de batería para niños.', '2023-10-18'),
(10, 19, '¿A qué edad pueden empezar los niños a tocar la batería?', '2023-10-20'),
(11, 1, 'Me ha gustado el curso de guitarra, lo recomiendo', '2023-10-07'),
(11, 3, 'Tengo una duda sobre el cambio de acordes', '2023-10-08'),
(12, 2, 'Excelente curso para mejorar mis producciones!', '2023-09-23'),
(12, 4, '¿Hay alguna forma de mejorar el kick?', '2023-09-25'),
(13, 5, 'Muy interesante el curso, aprendi mucho sobre los acordes', '2023-09-25'),
(13, 7, 'Estoy atascado en la parte de la melodia. ¿Algún tip?', '2023-09-28'),
(14, 8, 'Excelente curso, pude hacer mis primeros sonidos', '2023-10-10'),
(14, 10, '¿Qué especificaciones de hardware recomiendan para sintetizadores?', '2023-10-12'),
(15, 12, 'Me encantó el curso de tecnica vocal, quede maravillado', '2023-10-12'),
(15, 14, 'Tengo problemas con la afinacion. ¿Alguien me ayuda?', '2023-10-15'),
(16, 15, 'Muy buen curso de orquestacion, lo recomiendo', '2023-10-18'),
(16, 17, '¿A que se refieren cuando hablan de orquestacion?', '2023-10-20'),
(17, 18, 'Me gusta el blues y gracias a este curso mejore mis habilidades', '2023-10-07'),
(17, 20, 'Tengo una duda sobre como tocar blues en guitarra electrica', '2023-10-08'),
(18, 1, 'Pude mejorar mi produccion musical con este curso!', '2023-09-23'),
(18, 3, '¿En este curso enseñan que son los beats?', '2023-09-25'),
(19, 5, 'Aprendi mucho sobre los acordes en piano, muy agradecido', '2023-09-25'),
(19, 7, 'Estoy practicando la digitacion en el piano', '2023-09-28'),
(20, 9, 'El curso de grabacion me ayudo a mejorar mi sonido', '2023-10-12'),
(20, 12, '¿Me pueden decir que es el sonido?', '2023-10-15');


-- Población de la tabla Descuentos
INSERT INTO Descuentos (codigo_descuento, porcentaje_descuento, fecha_inicio, fecha_fin) VALUES
('DESC10', 10.00, '2023-10-01', '2023-10-31'),
('DESC20', 20.00, '2023-11-01', '2023-11-30'),
('DESC50', 50.00, '2023-12-24', '2023-12-25'),
('BLACKFRIDAY', 60.00, '2023-11-24', '2023-11-24'),
('NAVIDAD25', 25.00, '2023-12-01', '2023-12-31');

-- Población de la tabla Descuento_Curso
INSERT INTO Descuento_Curso (id_descuento, id_curso) VALUES
(1, 1),
(1, 3),
(1, 5),
(2, 2),
(2, 4),
(2, 6),
(3, 8),
(3, 10),
(3, 12),
(4, 7),
(4, 9),
(4, 11),
(5, 13),
(5, 14),
(5, 15),
(5, 16),
(5, 17),
(5, 18),
(5, 19),
(5, 20);

-- Población de la tabla Paises
INSERT INTO Paises (nombre_pais) VALUES
('Argentina'),
('España'),
('México'),
('Colombia'),
('Estados Unidos'),
('Otro');

-- Población de la tabla Ciudades
INSERT INTO Ciudades (id_pais, nombre_ciudad) VALUES
(1, 'Buenos Aires'),
(1, 'Córdoba'),
(2, 'Madrid'),
(2, 'Barcelona'),
(3, 'Ciudad de México'),
(3, 'Guadalajara'),
(4, 'Bogotá'),
(4, 'Medellín'),
(5, 'Nueva York'),
(5, 'Los Ángeles'),
(6, 'Otra');