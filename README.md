<center>
<img src="./img/logo.png" width="50%">
</center>

# Corchea Academy - Proyecto Final Base de Datos

**Alumno:** Felipe Torres

**Comisión:** 59430

**Tutor:** Nicolás Maugeri

**Docente:** Anderson Michel TORRES

---

## 1. Introducción

### 1.1 Descripción General del Proyecto

Corchea Academy es una plataforma de educación musical en línea que busca democratizar el acceso al aprendizaje musical de alta calidad. Este proyecto se centra en el diseño e implementación de una base de datos robusta y escalable que permita la gestión eficiente de usuarios, cursos, instructores, inscripciones, pagos y demás información relevante para el funcionamiento de la academia.

### 1.2 Alcance del Documento

Este documento describe el proceso de diseño e implementación de la base de datos para Corchea Academy. Incluye la definición del problema, el análisis de los requerimientos, el diseño del modelo de datos, la implementación en MySQL, la creación de funciones, vistas, procedimientos almacenados y triggers, así como una descripción del modelo de negocio que sustenta la plataforma.

## 2. Objetivo

Diseñar e implementar una base de datos relacional en MySQL para gestionar la información de la plataforma de cursos de música en línea Corchea Academy, asegurando la integridad, eficiencia y escalabilidad del sistema.

## 3. Situación Problemática

Corchea Academy se enfrenta al desafío de gestionar una creciente cantidad de información relacionada con sus cursos, usuarios, instructores y transacciones financieras. La falta de un sistema centralizado y eficiente para administrar estos datos dificulta el crecimiento de la plataforma y limita la capacidad de ofrecer una experiencia de usuario óptima.

Actualmente, la información se encuentra dispersa en diferentes archivos y hojas de cálculo, lo que genera inconsistencias, duplicidad de datos y dificulta la generación de reportes y el análisis del rendimiento del negocio. Además, la gestión manual de las inscripciones, pagos y seguimiento del progreso de los estudiantes consume una gran cantidad de tiempo y recursos.

Por lo tanto, se requiere una solución tecnológica que permita centralizar, organizar y gestionar la información de Corchea Academy de manera eficiente, segura y escalable. Esta solución debe facilitar el registro de usuarios, la administración de cursos, el proceso de inscripción y pago, el seguimiento del progreso de los estudiantes, la comunicación con los instructores y la generación de reportes para la toma de decisiones estratégicas.

## 4. Modelo de Negocio

### 4.1 Propuesta de Valor

Corchea Academy ofrece una plataforma de aprendizaje en línea que permite a los usuarios acceder a cursos de música de alta calidad, impartidos por instructores experimentados, a un precio accesible y con la flexibilidad de aprender a su propio ritmo.

### 4.2 Segmentos de Clientes

*   **Estudiantes de música:** Personas de todas las edades y niveles que desean aprender a tocar un instrumento, mejorar su técnica o adquirir conocimientos musicales.
*   **Músicos aficionados:** Personas que tocan música como hobby y buscan mejorar sus habilidades.
*   **Profesores de música:** Instructores que buscan una plataforma para impartir sus cursos en línea y alcanzar a un público más amplio.

### 4.3 Canales de Distribución

*   **Sitio web propio:** La plataforma principal para acceder a los cursos, registrarse, realizar pagos y gestionar el aprendizaje.
*   **Redes sociales:** Para la promoción de cursos, creación de comunidad y captación de nuevos estudiantes.
*   **Publicidad en línea:** Anuncios en buscadores y plataformas de video para alcanzar a un público más amplio.

## 5. Descripciones de Tablas y Campos

| Tabla               | Campo               | Abreviatura       | Tipo de Dato       | Tipo de Clave |
| ------------------- | ------------------- | ----------------- | ------------------ | ------------- |
| Usuarios            | id\_usuario         | ID Usuario        | INT                | Primaria      |
|                     | nombre              | Nombre            | VARCHAR(100)       |               |
|                     | apellido            | Apellido          | VARCHAR(100)       |               |
|                     | email               | Email             | VARCHAR(100)       | Única         |
|                     | contraseña          | Contraseña        | VARCHAR(255)       |               |
|                     | fecha\_registro     | Fecha Reg.        | DATETIME           |               |
|                     | id\_rol             | ID Rol            | INT                | Foránea       |
| Roles               | id\_rol             | ID Rol            | INT                | Primaria      |
|                     | nombre\_rol         | Nombre Rol        | VARCHAR(50)        |               |
| Cursos              | id\_curso           | ID Curso          | INT                | Primaria      |
|                     | nombre\_curso       | Nombre Curso      | VARCHAR(100)       |               |
|                     | descripcion         | Descripción       | TEXT               |               |
|                     | precio              | Precio            | DECIMAL(10, 2)     |               |
|                     | fecha\_creacion     | Fecha Creación    | DATETIME           |               |
|                     | id\_categoria       | ID Cat.           | INT                | Foránea       |
|                     | id\_nivel           | ID Nivel          | INT                | Foránea       |
| Categorias          | id\_categoria       | ID Cat.           | INT                | Primaria      |
|                     | nombre\_categoria   | Nombre Cat.       | VARCHAR(50)        |               |
| Niveles             | id\_nivel           | ID Nivel          | INT                | Primaria      |
|                     | nombre\_nivel       | Nombre Nivel      | VARCHAR(50)        |               |
| Inscripciones       | id\_inscripcion     | ID Inscr.        | INT                | Primaria      |
|                     | id\_usuario         | ID Usuario        | INT                | Foránea       |
|                     | id\_curso           | ID Curso          | INT                | Foránea       |
|                     | fecha\_inscripcion | Fecha Inscr.      | DATETIME           |               |
| Pagos               | id\_pago            | ID Pago           | INT                | Primaria      |
|                     | id\_inscripcion     | ID Inscripción     | INT                | Foránea       |
|                     | monto               | Monto             | DECIMAL(10, 2)     |               |
|                     | fecha\_pago         | Fecha Pago        | DATETIME           |               |
|                     | metodo\_pago        | Método Pago       | VARCHAR(50)        |               |
| Reseñas             | id\_resena          | ID Reseña        | INT                | Primaria      |
|                     | id\_inscripcion     | ID Inscripción     | INT                | Foránea       |
|                     | calificacion        | Calificación      | INT                |               |
|                     | comentario          | Comentario        | TEXT               |               |
|                     | fecha\_resena       | Fecha Reseña      | DATETIME           |               |
| Instructores        | id\_instructor      | ID Instructor     | INT                | Primaria      |
|                     | nombre              | Nombre            | VARCHAR(100)       |               |
|                     | apellido            | Apellido          | VARCHAR(100)       |               |
|                     | especialidad        | Especialidad      | VARCHAR(100)       |               |
|                     | email               | Email             | VARCHAR(100)       | Único         |
| Curso\_Instructor  | id\_curso\_instructor| ID Curso\_Instr. | INT                | Primaria      |
|                     | id\_curso           | ID Curso          | INT                | Foránea       |
|                     | id\_instructor      | ID Instructor     | INT                | Foránea       |
| Lecciones           | id\_leccion         | ID Lección        | INT                | Primaria      |
|                     | id\_curso           | ID Curso          | INT                | Foránea       |
|                     | titulo\_leccion     | Título Lección    | VARCHAR(100)       |               |
|                     | contenido\_leccion  | Contenido Lección | TEXT               |               |
|                     | orden               | Orden             | INT                |               |
| Progreso\_Leccion  | id\_progreso        | ID Progreso       | INT                | Primaria      |
|                     | id\_inscripcion     | ID Inscripción     | INT                | Foránea       |
|                     | id\_leccion         | ID Lección        | INT                | Foránea       |
|                     | fecha\_completado  | Fecha Completado  | DATETIME           |               |
| Recursos            | id\_recurso         | ID Recurso        | INT                | Primaria      |
|                     | id\_leccion         | ID Lección        | INT                | Foránea       |
|                     | nombre\_recurso     | Nombre Recurso    | VARCHAR(100)       |               |
|                     | tipo\_recurso       | Tipo Recurso      | VARCHAR(50)        |               |
|                     | url\_recurso        | URL Recurso      | VARCHAR(255)       |               |
| Certificados        | id\_certificado     | ID Certificado    | INT                | Primaria      |
|                     | id\_inscripcion     | ID Inscripción     | INT                | Foránea       |
|                     | fecha\_emision     | Fecha Emisión    | DATETIME           |               |
|                     | url\_certificado    | URL Certificado   | VARCHAR(255)       |               |
| Foros               | id\_foro            | ID Foro           | INT                | Primaria      |
|                     | id\_curso           | ID Curso          | INT                | Foránea       |
|                     | nombre\_foro        | Nombre Foro       | VARCHAR(100)       |               |
| Comentarios\_Foro  | id\_comentario      | ID Comentario    | INT                | Primaria      |
|                     | id\_foro            | ID Foro           | INT                | Foránea       |
|                     | id\_usuario         | ID Usuario        | INT                | Foránea       |
|                     | comentario          | Comentario        | TEXT               |               |
|                     | fecha\_comentario  | Fecha Comentario  | DATETIME           |               |
| Descuentos          | id\_descuento       | ID Descuento      | INT                | Primaria      |
|                     | codigo\_descuento  | Código Descuento  | VARCHAR(50)        | Único         |
|                     | porcentaje\_descuento| Porcentaje Desc. | DECIMAL(5,2)      |               |
|                     | fecha\_inicio       | Fecha Inicio      | DATETIME           |               |
|                     | fecha\_fin         | Fecha Fin        | DATETIME           |               |
| Descuento\_Curso    | id\_descuento\_curso| ID Descuento\_Cur.| INT                | Primaria      |
|                     | id\_descuento       | ID Descuento      | INT                | Foránea       |
|                     | id\_curso           | ID Curso          | INT                | Foránea       |
| Paises              | id\_pais            | ID País           | INT                | Primaria      |
|                     | nombre\_pais        | Nombre País       | VARCHAR(100)       |               |
| Ciudades            | id\_ciudad          | ID Ciudad         | INT                | Primaria      |
|                     | id\_pais            | ID País           | INT                | Foránea       |
|                     | nombre\_ciudad      | Nombre Ciudad     | VARCHAR(100)       |               |

## 6. Diagrama Entidad-Relación
<center>
<img src="./img/CorcheaAcademyDB (3).png" width="70%">
</center>

## 7. Scripts de Creación de Objetos en la Base de Datos

Aquí debes incluir todos los scripts SQL para la creación de tus objetos de base de datos. Como ya los has proporcionado en tu mensaje anterior, solo haré referencia a ellos.

**Nota:** Los scripts se encuentran en tu mensaje anterior, con las correcciones necesarias para eliminar `DELIMITER` y los triggers para compatibilidad con dbdiagram.io, pero en un entorno de produccion si son funcionales.

### 7.1 Funciones

*   `FN_Calcular_Total_Pagos_Usuario`
*   `FN_Obtener_Cantidad_Inscripciones`

### 7.2 Procedimientos Almacenados

*   `SP_Actualizar_Nivel_Curso`
*   `SP_Agregar_Comentario_Foro`
*   `SP_Registrar_Inscripcion`

### 7.3 Triggers

*   `trg_registrar_fecha_completado`
*   `trg_verificar_pago_inscripcion`

### 7.4 Vistas

*   `Vista_Comentarios_Foro`
*   `Vista_Detalle_Cursos`
*   `Vista_Instructores_Cursos`
*   `Vista_Lecciones_Por_Curso`
*   `Vista_Resumen_Pagos`

## 8. Roles y Permisos

El script `roles_users.sql` crea los siguientes roles y usuarios:

*   **Roles:**
    *   `role_select_vistas`: Permite seleccionar datos de las vistas.
    *   `role_crud_restaurantes`: Permite realizar operaciones CRUD en tablas relacionadas con restaurantes (No está relacionado con Corchea Academy, es de la referencia.  Ajusta esto según tus necesidades).
    *   `role_creacion_usuarios`: Permite crear y eliminar usuarios.
*   **Usuarios:**
    *   Dos usuarios por cada rol, con contraseñas especificadas en el script (recuerda cambiarlas en un entorno de producción).

## 9. Back up de la Base de Datos

Se puede generar un backup de la base de datos ejecutando el comando `make backup-db` desde la terminal. Esto genera un archivo `.sql` con la estructura y los datos de la base de datos en el momento del backup. (El script para esto está en tu `Makefile`).

## 10. Herramientas y Tecnologías Usadas

*   **Makefile:** Para la automatización de tareas y la gestión del proyecto.
*   **Docker:** Para la creación de un contenedor con el entorno de la base de datos.
*   **MySQL:** Como sistema de gestión de bases de datos relacional (versión: latest).
*   **MySQL Workbench:** Para la administración visual de la base de datos y la ejecución de consultas.
*   **Mockaroo:** Para la generación de datos ficticios para la base de datos.
*   **dbdiagram.io:** Para la generación del diagrama entidad-relación.

## 11. Cómo Levantar el Proyecto en CodeSpaces GitHub

1.  **Entorno:** El proyecto está configurado para ejecutarse en un entorno de desarrollo basado en contenedores utilizando CodeSpaces de GitHub.
2.  **Archivos Clave:**
    *   `env`: Contiene las variables de entorno, incluidas las contraseñas y datos sensibles. **(Asegúrate de que este archivo esté en `.gitignore` y no se suba al repositorio público).**
    *   `Makefile`: Contiene comandos para simplificar la creación y gestión del proyecto.
    *   `docker-compose.yml`: Define los servicios para la creación de la base de datos en contenedores Docker.

### Pasos para Arrancar el Proyecto

1.  **Abre la terminal** en tu CodeSpace.
2.  **Ejecuta los siguientes comandos:**
    *   `make`: Para construir y ejecutar los contenedores Docker (si hay un error de conexión al socket, vuelve a ejecutarlo).
    *   `make clean-db`: Para limpiar la base de datos (elimina datos existentes).
    *   `make test-db`: Para visualizar los datos de cada tabla (opcional).
    *   `make backup-db`: Para realizar un backup de la base de datos (opcional).
    *   `make access-db`: Para acceder a la base de datos a través de la línea de comandos de MySQL.

---