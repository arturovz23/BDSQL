CREATE DATABASE TiendaOnline;
USE TiendaOnline;

CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    ciudad VARCHAR(50)
);

CREATE TABLE Pedidos (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    fecha DATE,
    total DECIMAL(10,2),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

CREATE TABLE Productos (
    id_producto INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    precio DECIMAL(10,2)
);

CREATE TABLE DetallesPedido (
    id_detalle INT PRIMARY KEY AUTO_INCREMENT,
    id_pedido INT,
    id_producto INT,
    cantidad INT,
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido),
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);

-- Insertando Datos
INSERT INTO Clientes (nombre, ciudad) VALUES
('Ana Pérez', 'Madrid'),
('Juan García', 'Barcelona'),
('Luis Rodríguez', 'Valencia'),
('Sofía Martínez', 'Madrid');

INSERT INTO Pedidos (id_cliente, fecha, total) VALUES
(1, '2024-03-01', 120.50),
(2, '2024-03-05', 300.00),
(3, '2024-03-07', 150.75),
(1, '2024-03-10', 200.00);

INSERT INTO Productos (nombre, precio) VALUES
('Laptop', 800.00),
('Mouse', 20.00),
('Teclado', 50.00),
('Monitor', 150.00);

INSERT INTO DetallesPedido (id_pedido, id_producto, cantidad) VALUES
(1, 2, 2),
(1, 3, 1),
(2, 1, 1),
(3, 4, 2),
(4, 3, 3);