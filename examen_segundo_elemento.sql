-- Crear tablas
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    Nombre NVARCHAR(100),
    Ciudad NVARCHAR(50)
);

CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY,
    ClienteID INT,
    Fecha DATE,
    Monto DECIMAL(10, 2),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

CREATE TABLE Productos (
    ProductoID INT PRIMARY KEY,
    Nombre NVARCHAR(100),
    Precio DECIMAL(10, 2)
);

CREATE TABLE DetallePedido (
    DetalleID INT PRIMARY KEY,
    PedidoID INT,
    ProductoID INT,
    Cantidad INT,
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID),
    FOREIGN KEY (ProductoID) REFERENCES Productos(ProductoID)
);

INSERT INTO Clientes VALUES
(1, 'Juan Pérez', 'Guadalajara'),
(2, 'Ana López', 'Monterrey'),
(3, 'Luis Torres', 'CDMX');

INSERT INTO Pedidos VALUES
(101, 1, '2024-03-01', 1500.00),
(102, 2, '2024-03-02', 2500.00),
(103, 1, '2024-03-05', 1800.00);

INSERT INTO Productos VALUES
(201, 'Laptop', 1000.00),
(202, 'Mouse', 20.00),
(203, 'Teclado', 30.00);

INSERT INTO DetallePedido VALUES
(1, 101, 201, 1),
(2, 101, 202, 2),
(3, 102, 203, 1),
(4, 103, 202, 1);