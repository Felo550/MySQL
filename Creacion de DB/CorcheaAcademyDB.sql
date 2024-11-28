-- Base de datos para Corchea Academy
CREATE DATABASE CorcheaAcademyDB;
USE CorcheaAcademyDB;

-- Tabla Usuarios
CREATE TABLE Usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    contraseña VARCHAR(255) NOT NULL,
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP,
    id_rol INT
);

-- Tabla Roles
CREATE TABLE Roles (
    id_rol INT AUTO_INCREMENT PRIMARY KEY,
    nombre_rol VARCHAR(50) NOT NULL
);

-- Tabla Cursos
CREATE TABLE Cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nombre_curso VARCHAR(100) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10, 2) NOT NULL,
    nivel VARCHAR(50) NOT NULL,
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    id_categoria INT
);

-- Tabla Categorias
CREATE TABLE Categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(50) NOT NULL
);

-- Tabla Inscripciones
CREATE TABLE Inscripciones (
    id_inscripcion INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    id_curso INT,
    fecha_inscripcion DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Tabla Pagos
CREATE TABLE Pagos (
    id_pago INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    id_curso INT,
    monto DECIMAL(10, 2) NOT NULL,
    fecha_pago DATETIME DEFAULT CURRENT_TIMESTAMP,
    metodo_pago VARCHAR(50)
);

-- Agregando restricciones de claves foráneas
ALTER TABLE Usuarios
ADD CONSTRAINT fk_usuario_rol
FOREIGN KEY (id_rol) REFERENCES Roles(id_rol);

ALTER TABLE Cursos
ADD CONSTRAINT fk_curso_categoria
FOREIGN KEY (id_categoria) REFERENCES Categorias(id_categoria);

ALTER TABLE Inscripciones
ADD CONSTRAINT fk_inscripcion_usuario
FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario);

ALTER TABLE Inscripciones
ADD CONSTRAINT fk_inscripcion_curso
FOREIGN KEY (id_curso) REFERENCES Cursos(id_curso);

ALTER TABLE Pagos
ADD CONSTRAINT fk_pago_usuario
FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario);

ALTER TABLE Pagos
ADD CONSTRAINT fk_pago_curso
FOREIGN KEY (id_curso) REFERENCES Cursos(id_curso);


-- Descripciones de los campos y sus abreviaturas:
-- Usuarios
--   - id_usuario (ID Usuario) : INT, Clave primaria
--   - nombre (Nombre completo) : VARCHAR(100)
--   - email (Correo electrónico) : VARCHAR(100), Único
--   - contraseña (Contraseña) : VARCHAR(255)
--   - fecha_registro (Fecha de Registro) : DATE
--   - id_rol (ID Rol) : INT, Clave foránea a Roles

-- Roles
--   - id_rol (ID Rol) : INT, Clave primaria
--   - nombre_rol (Nombre del Rol) : VARCHAR(50)

-- Cursos
--   - id_curso (ID Curso) : INT, Clave primaria
--   - nombre_curso (Nombre del Curso) : VARCHAR(100)
--   - descripcion (Descripción del Curso) : TEXT
--   - precio (Precio del Curso) : DECIMAL(10,2)
--   - nivel (Nivel del Curso) : VARCHAR(50)
--   - fecha_creacion (Fecha de Creación) : DATE
--   - id_categoria (ID Categoría) : INT, Clave foránea a Categorías

-- Categorias
--   - id_categoria (ID Categoría) : INT, Clave primaria
--   - nombre_categoria (Nombre de la Categoría) : VARCHAR(50)

-- Inscripciones
--   - id_inscripcion (ID Inscripción) : INT, Clave primaria
--   - id_usuario (ID Usuario) : INT, Clave foránea a Usuarios
--   - id_curso (ID Curso) : INT, Clave foránea a Cursos
--   - fecha_inscripcion (Fecha de Inscripción) : DATE

-- Pagos
--   - id_pago (ID Pago) : INT, Clave primaria
--   - id_usuario (ID Usuario) : INT, Clave foránea a Usuarios
--   - id_curso (ID Curso) : INT, Clave foránea a Cursos
--   - monto (Monto del Pago) : DECIMAL(10,2)
--   - fecha_pago (Fecha del Pago) : DATE
--   - metodo_pago (Método de Pago) : VARCHAR(50)
