CREATE DATABASE TiendaOnline;

USE TiendaOnline;

-- Crear la tabla Productos
CREATE TABLE Productos (
    ID INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(100),
    Precio DECIMAL(10,2),
    Stock INT,
    FechaIngreso DATE
);

-- Insertar datos de prueba
INSERT INTO Productos (Nombre, Precio, Stock, FechaIngreso) VALUES
('Laptop HP', 1500.50, 10, '2023-05-15'),
('Mouse Logitech', 25.99, 50, '2024-01-10'),
('Teclado Mecánico', 89.99, 20, '2023-12-05'),
('Monitor Samsung', 299.99, 15, '2024-02-01'),
('Disco Duro 1TB', 75.00, 30, '2023-11-20');

SELECT * FROM Productos;
