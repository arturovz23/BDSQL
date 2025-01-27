-- Crear la base de datos
CREATE DATABASE tienda_online;

-- Usar la base de datos
/*USE tienda_online;*/

CREATE TABLE productos (
    id_producto INT PRIMARY KEY,
    nombre VARCHAR(50),
    categoria VARCHAR(50),
    precio DECIMAL(10, 2),
    stock INT
);

CREATE TABLE ventas (
    id_venta INT PRIMARY KEY,
    id_producto INT,
    cantidad INT,
    fecha DATE,
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);

INSERT INTO productos VALUES
(1, 'Televisor', 'Electrónica', 500.00, 20),
(2, 'Laptop', 'Electrónica', 1000.00, 10),
(3, 'Smartphone', 'Electrónica', 800.00, 15),
(4, 'Silla', 'Muebles', 120.00, 50),
(5, 'Escritorio', 'Muebles', 250.00, 30);

INSERT INTO ventas VALUES
(1, 1, 2, '2025-01-10'),
(2, 3, 1, '2025-01-15'),
(3, 4, 5, '2025-01-20'),
(4, 2, 3, '2025-01-25'),
(5, 5, 2, '2025-01-27');
