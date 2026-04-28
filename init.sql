CREATE DATABASE IF NOT EXISTS personas_db;
USE personas_db;

CREATE TABLE persona (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    edad INT
);

INSERT INTO persona (nombre, apellido, edad) VALUES
('Carlos', 'Perez', 25),
('Ana', 'Gomez', 30),
('Luis', 'Torres', 17),
('Maria', 'Lopez', 40),
('Jorge', 'Ramirez', 22),
('Laura', 'Martinez', 19),
('Pedro', 'Sanchez', 35),
('Sofia', 'Castro', 28),
('Diego', 'Morales', 15),
('Elena', 'Vargas', 45);