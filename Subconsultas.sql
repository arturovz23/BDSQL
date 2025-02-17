-- Creación de la base de datos
CREATE DATABASE Universidad;
USE Universidad;

-- Creación de la tabla de estudiantes
CREATE TABLE Estudiantes (
    id_estudiante INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    carrera VARCHAR(100)
);

-- Creación de la tabla de calificaciones
CREATE TABLE Calificaciones (
    id_calificacion INT PRIMARY KEY AUTO_INCREMENT,
    id_estudiante INT,
    materia VARCHAR(100),
    nota DECIMAL(5,2),
    FOREIGN KEY (id_estudiante) REFERENCES Estudiantes(id_estudiante)
);

-- Inserción de datos en la tabla Estudiantes
INSERT INTO Estudiantes (nombre, carrera) VALUES
('Carlos Pérez', 'Ingeniería en Software'),
('María López', 'Ingeniería en Software'),
('José Ramírez', 'Ingeniería en Sistemas'),
('Ana Fernández', 'Ingeniería en Sistemas'),
('Pedro Gómez', 'Ingeniería en Datos');
