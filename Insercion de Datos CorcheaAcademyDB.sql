-- Población de la tabla Roles
INSERT INTO Roles (id_rol, nombre_rol)
VALUES 
(1, 'Administrador'),
(2, 'Instructor'),
(3, 'Estudiante'),
(4, 'Invitado'),
(5, 'Editor'),
(6, 'Moderador'),
(7, 'Coordinador'),
(8, 'Soporte Técnico'),
(9, 'Gestor de Contenido'),
(10, 'Visitante');

-- Población de la tabla Categorias
INSERT INTO Categorias (id_categoria, nombre_categoria)
VALUES
(1, 'Bajo'),
(2, 'Batería'),
(3, 'Piano'),
(4, 'Técnica Vocal'),
(5, 'Guitarra'),
(6, 'Producción Musical'),
(7, 'Composición'),
(8, 'DJing'),
(9, 'Teoría Musical'),
(10, 'Improvisación');

-- Población de la tabla Usuarios
INSERT INTO Usuarios (id_usuario, nombre, email, contraseña, fecha_registro, id_rol)
VALUES
(1, 'Carlos Pérez', 'carlos.perez@gmail.com', 'pass1234', '2023-10-01', 3),
(2, 'Ana López', 'ana.lopez@gmail.com', 'pass1234', '2023-09-15', 2),
(3, 'Luis García', 'luis.garcia@gmail.com', 'pass1234', '2023-08-20', 1),
(4, 'María Torres', 'maria.torres@gmail.com', 'pass1234', '2023-09-10', 3),
(5, 'Pedro Sánchez', 'pedro.sanchez@gmail.com', 'pass1234', '2023-09-05', 2),
(6, 'Sandra Ruiz', 'sandra.ruiz@gmail.com', 'pass1234', '2023-08-30', 3),
(7, 'Juan Martínez', 'juan.martinez@gmail.com', 'pass1234', '2023-09-25', 3),
(8, 'Lucía Gómez', 'lucia.gomez@gmail.com', 'pass1234', '2023-09-01', 3),
(9, 'Raúl Díaz', 'raul.diaz@gmail.com', 'pass1234', '2023-10-02', 3),
(10, 'Elena Romero', 'elena.romero@gmail.com', 'pass1234', '2023-09-12', 3);

-- Población de la tabla Cursos
INSERT INTO Cursos (id_curso, nombre_curso, descripcion, precio, nivel, fecha_creacion, id_categoria)
VALUES
(1, 'Aprende Bajo Básico', 'Curso introductorio para aprender bajo eléctrico', 49.99, 'Principiante', '2023-09-01', 1),
(2, 'Técnicas Avanzadas de Batería', 'Curso avanzado de ritmos y fills en batería', 79.99, 'Avanzado', '2023-08-15', 2),
(3, 'Piano para Principiantes', 'Introducción a acordes y escalas en piano', 59.99, 'Principiante', '2023-07-20', 3),
(4, 'Técnica Vocal Nivel 1', 'Técnicas básicas para mejorar la voz', 39.99, 'Principiante', '2023-06-25', 4),
(5, 'Composición Musical', 'Aprende a componer canciones desde cero', 99.99, 'Intermedio', '2023-08-10', 7),
(6, 'Producción Musical en DAW', 'Domina el software de producción musical', 119.99, 'Avanzado', '2023-09-15', 6),
(7, 'Improvisación en Jazz', 'Técnicas de improvisación en jazz', 89.99, 'Intermedio', '2023-08-30', 9),
(8, 'DJing para Principiantes', 'Curso básico para ser DJ', 69.99, 'Principiante', '2023-07-05', 8),
(9, 'Teoría Musical Completa', 'Curso completo de teoría musical', 109.99, 'Avanzado', '2023-09-20', 9),
(10, 'Batería para Niños', 'Curso introductorio de batería para niños', 29.99, 'Principiante', '2023-10-01', 2);

-- Población de la tabla Inscripciones
INSERT INTO Inscripciones (id_inscripcion, id_usuario, id_curso, fecha_inscripcion)
VALUES
(1, 1, 1, '2023-10-05'),
(2, 2, 2, '2023-09-20'),
(3, 3, 3, '2023-08-25'),
(4, 4, 4, '2023-09-12'),
(5, 5, 5, '2023-09-18'),
(6, 6, 6, '2023-09-25'),
(7, 7, 7, '2023-09-30'),
(8, 8, 8, '2023-10-02'),
(9, 9, 9, '2023-10-05'),
(10, 10, 10, '2023-10-10');

-- Población de la tabla Pagos
INSERT INTO Pagos (id_pago, id_usuario, id_curso, monto, fecha_pago, metodo_pago)
VALUES
(1, 1, 1, 49.99, '2023-10-06', 'Tarjeta de Crédito'),
(2, 2, 2, 79.99, '2023-09-21', 'PayPal'),
(3, 3, 3, 59.99, '2023-08-26', 'Transferencia Bancaria'),
(4, 4, 4, 39.99, '2023-09-13', 'Tarjeta de Crédito'),
(5, 5, 5, 99.99, '2023-09-19', 'PayPal'),
(6, 6, 6, 119.99, '2023-09-26', 'Transferencia Bancaria'),
(7, 7, 7, 89.99, '2023-10-01', 'PayPal'),
(8, 8, 8, 69.99, '2023-10-03', 'Tarjeta de Crédito'),
(9, 9, 9, 109.99, '2023-10-06', 'Transferencia Bancaria'),
(10, 10, 10, 29.99, '2023-10-11', 'PayPal');
