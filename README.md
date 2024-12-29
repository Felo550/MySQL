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

Debido a la longitud de los scripts, se ubican directamente en la carpeta Objetos del proyecto

## 7.1 Funciones

### 7.1.1 `FN_Calcular_Total_Pagos_Usuario`

**Descripción:** Calcula el total de pagos realizados por un usuario específico.

**Parámetros:**

*   `id_usuario_input` (INT): ID del usuario para el que se calculará el total de pagos.

**Retorna:**

*   `DECIMAL(10, 2)`: Monto total pagado por el usuario. Retorna `0.00` si el usuario no ha realizado ningún pago o no existe.

**Tablas involucradas:**

*   `Pagos`
*   `Inscripciones`

**Ejemplo de uso:**
```sql
SELECT Calcular_Total_Pagos_Usuario(1) AS Total_Pagado;
```

### 7.1.2 `FN_Obtener_Cantidad_Inscripciones`

**Descripción:** Obtiene la cantidad total de inscripciones realizadas por un usuario específico.

**Parámetros:**

*   `id_usuario_input` (INT): ID del usuario para el que se obtendrá la cantidad de inscripciones.

**Retorna:**

*   `INT`: Cantidad total de inscripciones del usuario. Retorna `0` si el usuario no tiene inscripciones o no existe.

**Tablas involucradas:**

*   `Inscripciones`

**Ejemplo de uso:**

```sql
SELECT Obtener_Cantidad_Inscripciones(1) AS Total_Inscripciones;
```

## 7.2 Procedimientos Almacenados

### 7.2.1 `SP_Actualizar_Nivel_Curso`

**Descripción:** Actualiza el nivel de un curso existente.

**Objetivo:** Permitir la modificación del nivel de un curso, validando que tanto el curso como el nuevo nivel existan en la base de datos.

**Parámetros:**

*   `id_curso_input` (INT, IN): ID del curso a actualizar.
*   `id_nivel_nuevo` (INT, IN): ID del nuevo nivel a asignar.

**Tablas involucradas:**

*   `Cursos`
*   `Niveles`

**Ejemplo de uso:**

```sql
CALL SP_Actualizar_Nivel_Curso(1, 2); -- Cambia el nivel del curso con ID 1 al nivel con ID 2
```
### 7.2.2 `SP_Agregar_Comentario_Foro`

**Descripción:** Agrega un nuevo comentario a un foro específico, realizado por un usuario dado.

**Objetivo:** Simplificar la lógica para agregar un comentario, validando que el foro y el usuario existen.

**Parámetros:**

*   `id_foro_input` (INT, IN): ID del foro al que se agregará el comentario.
*   `id_usuario_input` (INT, IN): ID del usuario que realiza el comentario.
*   `comentario_input` (TEXT, IN): Texto del comentario.

**Tablas involucradas:**

*   `Foros`
*   `Usuarios`
*   `Comentarios_Foro`

**Ejemplo de uso:**

```sql
CALL SP_Agregar_Comentario_Foro(1, 1, 'Este es un comentario de prueba.');
```
### 7.2.3 `SP_Registrar_Inscripcion`

**Descripción:** Inserta una nueva inscripción para un usuario y un curso específicos.

**Objetivo:** Simplificar la lógica para registrar una inscripción, validando que el curso existe y que el usuario tiene un rol permitido (Estudiante).

**Parámetros:**

*   `id_usuario_input` (INT, IN): ID del usuario que se inscribe.
*   `id_curso_input` (INT, IN): ID del curso al que se inscribe el usuario.

**Tablas involucradas:**

*   `Usuarios`
*   `Cursos`
*   `Inscripciones`

**Ejemplo de uso:**

```sql
CALL SP_Registrar_Inscripcion(1, 2);
```

## 7.3 Triggers

### 7.3.1 `trg_registrar_fecha_completado`

**Descripción:** Registra la fecha y hora actuales en el campo `fecha_completado` de la tabla `Progreso_Leccion` cuando un estudiante completa una lección.

**Objetivo:** Automatizar el registro de la fecha de finalización de una lección, facilitando el seguimiento del progreso del estudiante.

**Tabla involucrada:**

*   `Progreso_Leccion`

**Evento:**

*   `BEFORE UPDATE` en `Progreso_Leccion`

**Condiciones:**
* Se actualiza la fila en la tabla `Progreso_Leccion`.
* El valor de `NEW.fecha_completado` es `NOT NULL` (es decir, se está estableciendo una fecha de completado).
* El valor de `OLD.fecha_completado` es `NULL` (es decir, la lección no estaba completada previamente).
**Acciones:**

*   Establece el valor de `NEW.fecha_completado` a `NOW()`, que es la fecha y hora actuales.

### 7.3.2 `trg_verificar_pago_inscripcion`

**Descripción:** Impide la eliminación de una inscripción si existe un pago asociado a ella.

**Objetivo:** Mantener la integridad de los datos, evitando la eliminación accidental de inscripciones que ya han sido pagadas.

**Tabla involucrada:**

*   `Inscripciones`

**Tablas relacionadas:**
*   `Pagos`

**Evento:**

*   `BEFORE DELETE` en `Inscripciones`

**Condiciones:**

* Se intenta eliminar una fila de la tabla `Inscripciones`.
* Existe al menos una fila en la tabla `Pagos` donde el valor de `id_inscripcion` coincide con el valor de `OLD.id_inscripcion` de la fila que se intenta eliminar en `Inscripciones`.

**Acciones:**

*   Si se cumple la condición, se genera un error con `SQLSTATE '45000'` y el mensaje: `'No se puede eliminar la inscripción porque tiene un pago asociado.'`
*   La eliminación de la inscripción no se lleva a cabo.

## 7.4 Vistas

### 7.4.1 `Vista_Comentarios_Foro`

**Descripción:** Muestra los comentarios realizados en los foros, incluyendo el ID del foro, el ID y nombre del curso al que pertenece el foro, el ID del comentario, el ID, nombre, y apellido del usuario que realizó el comentario, el contenido del comentario y la fecha en que se realizó.

**Objetivo:** Facilitar la consulta de los comentarios en los foros, mostrando información consolidada de las tablas `Foros`, `Comentarios_Foro`, `Usuarios` y `Cursos`.

**Tablas involucradas:**

*   `Foros`
*   `Comentarios_Foro`
*   `Usuarios`
*   `Cursos`

**Columnas:**

*   `ID_Foro` (INT): ID del foro.
*   `ID_Curso` (INT): ID del curso al que pertenece el foro.
*   `Nombre_Curso` (VARCHAR): Nombre del curso.
*   `ID_Comentario` (INT): ID del comentario.
*   `ID_Usuario` (INT): ID del usuario que realizó el comentario.
*   `Nombre_Usuario` (VARCHAR): Nombre del usuario.
*   `Apellido_Usuario` (VARCHAR): Apellido del usuario.
*   `Comentario` (TEXT): Contenido del comentario.
*   `Fecha_Comentario` (DATETIME): Fecha en que se realizó el comentario.

**Ejemplo de consulta:**

```sql
SELECT * FROM Vista_Comentarios_Foro;
```
### 7.4.2 `Vista_Detalle_Cursos`

**Descripción:** Muestra información detallada de los cursos, incluyendo el nombre del curso, descripción, precio, categoría y nivel.

**Objetivo:** Facilitar la consulta rápida de información completa de los cursos, combinando datos de las tablas `Cursos`, `Categorias` y `Niveles`.

**Tablas involucradas:**

*   `Cursos`
*   `Categorias`
*   `Niveles`

**Columnas:**

*   `ID_Curso` (INT): ID del curso.
*   `Nombre_Curso` (VARCHAR): Nombre del curso.
*   `Descripcion` (TEXT): Descripción del curso.
*   `Precio` (DECIMAL): Precio del curso.
*   `Categoria` (VARCHAR): Categoría del curso.
*   `Nivel` (VARCHAR): Nivel del curso.

**Ejemplo de consulta:**

```sql
SELECT * FROM Vista_Detalle_Cursos;
```

### 7.4.3 `Vista_Instructores_Cursos`

**Descripción:** Muestra la relación entre instructores y los cursos que imparten, incluyendo el ID y nombre del instructor, y el ID y nombre del curso.

**Objetivo:** Facilitar la consulta de qué instructor imparte cada curso, combinando datos de las tablas `Instructores`, `Curso_Instructor` y `Cursos`.

**Tablas involucradas:**

*   `Instructores`
*   `Curso_Instructor`
*   `Cursos`

**Columnas:**

*   `ID_Instructor` (INT): ID del instructor.
*   `Nombre_Instructor` (VARCHAR): Nombre del instructor.
*   `Apellido_Instructor` (VARCHAR): Apellido del instructor.
*   `ID_Curso` (INT): ID del curso.
*   `Nombre_Curso` (VARCHAR): Nombre del curso.

**Ejemplo de consulta:**

```sql
SELECT * FROM Vista_Instructores_Cursos;
```
### 7.4.4 `Vista_Lecciones_Por_Curso`

**Descripción:** Muestra las lecciones asociadas a cada curso, incluyendo el ID y nombre del curso, y el ID, título y orden de la lección.

**Objetivo:** Facilitar la consulta de las lecciones que componen cada curso, combinando datos de las tablas `Cursos` y `Lecciones`.

**Tablas involucradas:**

*   `Cursos`
*   `Lecciones`

**Columnas:**

*   `ID_Curso` (INT): ID del curso.
*   `Nombre_Curso` (VARCHAR): Nombre del curso.
*   `ID_Leccion` (INT): ID de la lección.
*   `Titulo_Leccion` (VARCHAR): Título de la lección.
*   `Orden_Leccion` (INT): Orden de la lección dentro del curso.

**Ejemplo de consulta:**

```sql
SELECT * FROM Vista_Lecciones_Por_Curso;
```

### 7.4.5 `Vista_Resumen_Pagos`

**Descripción:** Muestra un resumen de los pagos realizados, incluyendo información del usuario, el curso al que corresponde el pago, el monto, la fecha y el método de pago.

**Objetivo:** Facilitar la consulta de los pagos realizados, mostrando información consolidada de las tablas `Pagos`, `Inscripciones`, `Usuarios` y `Cursos`.

**Tablas involucradas:**

*   `Pagos`
*   `Inscripciones`
*   `Usuarios`
*   `Cursos`

**Columnas:**

*   `ID_Pago` (INT): ID del pago.
*   `ID_Usuario` (INT): ID del usuario que realizó el pago.
*   `Nombre_Usuario` (VARCHAR): Nombre del usuario.
*   `Apellido_Usuario` (VARCHAR): Apellido del usuario.
*   `ID_Curso` (INT): ID del curso al que corresponde el pago.
*   `Nombre_Curso` (VARCHAR): Nombre del curso.
*   `Monto_Pagado` (DECIMAL): Monto del pago.
*   `Fecha_Pago` (DATETIME): Fecha del pago.
*   `Metodo_Pago` (VARCHAR): Método de pago utilizado.

**Ejemplo de consulta:**

```sql
SELECT * FROM Vista_Resumen_Pagos;
```

## 8. Herramientas y Tecnologías Usadas

*   **MySQL:** Como sistema de gestión de bases de datos relacional (versión: latest).
*   **MySQL Workbench:** Para la administración visual de la base de datos y la ejecución de consultas.
*   **dbdiagram.io:** Para la generación del diagrama entidad-relación.

---