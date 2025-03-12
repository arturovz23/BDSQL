CREATE DATABASE Tienda;
USE Tienda;

CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    Nombre NVARCHAR(100),
    Ciudad NVARCHAR(100)
);

CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY,
    ClienteID INT,
    FechaPedido DATE,
    Monto DECIMAL(10,2),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

INSERT INTO Clientes (ClienteID, Nombre, Ciudad) VALUES
(1, 'Juan Pérez', 'Madrid'),
(2, 'María López', 'Barcelona'),
(3, 'Carlos Sánchez', 'Valencia');

INSERT INTO Pedidos (PedidoID, ClienteID, FechaPedido, Monto) VALUES
(101, 1, '2024-03-01', 150.00),
(102, 2, '2024-03-02', 200.00),
(103, NULL, '2024-03-03', 300.00);