-- Base de datos para Corchea Academy
CREATE DATABASE CorcheaAcademyDB;
USE CorcheaAcademyDB;

-- Tabla Usuarios
CREATE TABLE Usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
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

-- Tabla Categorias
CREATE TABLE Categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(50) NOT NULL
);

-- Tabla Niveles
CREATE TABLE Niveles (
    id_nivel INT AUTO_INCREMENT PRIMARY KEY,
    nombre_nivel VARCHAR(50) NOT NULL
);

-- Tabla Cursos
CREATE TABLE Cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nombre_curso VARCHAR(100) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10, 2) NOT NULL,
    fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    id_categoria INT,
    id_nivel INT,
    FOREIGN KEY (id_categoria) REFERENCES Categorias(id_categoria),
    FOREIGN KEY (id_nivel) REFERENCES Niveles(id_nivel)
);

-- Tabla Inscripciones
CREATE TABLE Inscripciones (
    id_inscripcion INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    id_curso INT,
    fecha_inscripcion DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario),
    FOREIGN KEY (id_curso) REFERENCES Cursos(id_curso)
);

-- Tabla Pagos
CREATE TABLE Pagos (
    id_pago INT AUTO_INCREMENT PRIMARY KEY,
    id_inscripcion INT,
    monto DECIMAL(10, 2) NOT NULL,
    fecha_pago DATETIME DEFAULT CURRENT_TIMESTAMP,
    metodo_pago VARCHAR(50),
    FOREIGN KEY (id_inscripcion) REFERENCES Inscripciones(id_inscripcion)
);

-- Tabla Reseñas (Tabla de Hechos)
CREATE TABLE Reseñas (
    id_resena INT AUTO_INCREMENT PRIMARY KEY,
    id_inscripcion INT,
    calificacion INT CHECK (calificacion >= 1 AND calificacion <= 5),
    comentario TEXT,
    fecha_resena DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_inscripcion) REFERENCES Inscripciones(id_inscripcion)
);

-- Tabla Instructores
CREATE TABLE Instructores (
    id_instructor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    especialidad VARCHAR(100),
    email VARCHAR(100) UNIQUE NOT NULL
);

-- Tabla Curso_Instructor
CREATE TABLE Curso_Instructor (
    id_curso_instructor INT AUTO_INCREMENT PRIMARY KEY,
    id_curso INT,
    id_instructor INT,
    FOREIGN KEY (id_curso) REFERENCES Cursos(id_curso),
    FOREIGN KEY (id_instructor) REFERENCES Instructores(id_instructor)
);

-- Tabla Lecciones
CREATE TABLE Lecciones (
    id_leccion INT AUTO_INCREMENT PRIMARY KEY,
    id_curso INT,
    titulo_leccion VARCHAR(100) NOT NULL,
    contenido_leccion TEXT,
    orden INT,
    FOREIGN KEY (id_curso) REFERENCES Cursos(id_curso)
);

-- Tabla Progreso_Leccion
CREATE TABLE Progreso_Leccion (
    id_progreso INT AUTO_INCREMENT PRIMARY KEY,
    id_inscripcion INT,
    id_leccion INT,
    fecha_completado DATETIME,
    FOREIGN KEY (id_inscripcion) REFERENCES Inscripciones(id_inscripcion),
    FOREIGN KEY (id_leccion) REFERENCES Lecciones(id_leccion)
);

-- Tabla Recursos
CREATE TABLE Recursos (
    id_recurso INT AUTO_INCREMENT PRIMARY KEY,
    id_leccion INT,
    nombre_recurso VARCHAR(100) NOT NULL,
    tipo_recurso VARCHAR(50),
    url_recurso VARCHAR(255),
    FOREIGN KEY (id_leccion) REFERENCES Lecciones(id_leccion)
);

-- Tabla Certificados
CREATE TABLE Certificados (
    id_certificado INT AUTO_INCREMENT PRIMARY KEY,
    id_inscripcion INT,
    fecha_emision DATETIME DEFAULT CURRENT_TIMESTAMP,
    url_certificado VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_inscripcion) REFERENCES Inscripciones(id_inscripcion)
);

-- Tabla Foros
CREATE TABLE Foros (
    id_foro INT AUTO_INCREMENT PRIMARY KEY,
    id_curso INT,
    nombre_foro VARCHAR(100) NOT NULL,
    FOREIGN KEY (id_curso) REFERENCES Cursos(id_curso)
);

-- Tabla Comentarios_Foro
CREATE TABLE Comentarios_Foro (
    id_comentario INT AUTO_INCREMENT PRIMARY KEY,
    id_foro INT,
    id_usuario INT,
    comentario TEXT,
    fecha_comentario DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_foro) REFERENCES Foros(id_foro),
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);

-- Tabla Descuentos
CREATE TABLE Descuentos (
    id_descuento INT AUTO_INCREMENT PRIMARY KEY,
    codigo_descuento VARCHAR(50) UNIQUE NOT NULL,
    porcentaje_descuento DECIMAL(5, 2) NOT NULL,
    fecha_inicio DATETIME,
    fecha_fin DATETIME
);

-- Tabla Descuento_Curso
CREATE TABLE Descuento_Curso (
    id_descuento_curso INT AUTO_INCREMENT PRIMARY KEY,
    id_descuento INT,
    id_curso INT,
    FOREIGN KEY (id_descuento) REFERENCES Descuentos(id_descuento),
    FOREIGN KEY (id_curso) REFERENCES Cursos(id_curso)
);

-- Tabla Paises
CREATE TABLE Paises (
    id_pais INT AUTO_INCREMENT PRIMARY KEY,
    nombre_pais VARCHAR(100) NOT NULL
);

-- Tabla Ciudades
CREATE TABLE Ciudades (
    id_ciudad INT AUTO_INCREMENT PRIMARY KEY,
    id_pais INT,
    nombre_ciudad VARCHAR(100) NOT NULL,
    FOREIGN KEY (id_pais) REFERENCES Paises(id_pais)
);

-- Agregando restricciones de claves foráneas
ALTER TABLE Usuarios
ADD CONSTRAINT fk_usuario_rol
FOREIGN KEY (id_rol) REFERENCES Roles(id_rol);

-- Índices
CREATE INDEX idx_email ON Usuarios(email);
CREATE INDEX idx_nombre_curso ON Cursos(nombre_curso);
CREATE INDEX idx_fecha_inscripcion ON Inscripciones(fecha_inscripcion);