CREATE TABLE Clientes (
    IdCliente INT PRIMARY KEY IDENTITY,
    Nombre VARCHAR(100),
    Email VARCHAR(100),
    Ciudad VARCHAR(50)
);

CREATE TABLE Pedidos (
    IdPedido INT PRIMARY KEY IDENTITY,
    IdCliente INT,
    FechaPedido DATE,
    Total DECIMAL(10,2),
    FOREIGN KEY (IdCliente) REFERENCES Clientes(IdCliente)
);

CREATE TABLE Productos (
    IdProducto INT PRIMARY KEY IDENTITY,
    NombreProducto VARCHAR(100),
    Precio DECIMAL(10,2),
    Stock INT
);

CREATE TABLE DetallePedido (
    IdDetalle INT PRIMARY KEY IDENTITY,
    IdPedido INT,
    IdProducto INT,
    Cantidad INT,
    PrecioUnitario DECIMAL(10,2),
    FOREIGN KEY (IdPedido) REFERENCES Pedidos(IdPedido),
    FOREIGN KEY (IdProducto) REFERENCES Productos(IdProducto)
);

-- Insertar datos en Clientes
INSERT INTO Clientes (Nombre, Email, Ciudad) VALUES 
('Carlos Pérez', 'carlos@mail.com', 'Madrid'),
('Ana Gómez', 'ana@mail.com', 'Barcelona'),
('Luis Torres', 'luis@mail.com', 'Sevilla');

-- Insertar datos en Productos
INSERT INTO Productos (NombreProducto, Precio, Stock) VALUES 
('Laptop', 1200.00, 10),
('Mouse', 25.00, 50),
('Teclado', 45.00, 30);

-- Insertar datos en Pedidos
INSERT INTO Pedidos (IdCliente, FechaPedido, Total) VALUES 
(1, '2024-03-10', 1270.00),
(2, '2024-03-12', 50.00);

-- Insertar datos en DetallePedido
INSERT INTO DetallePedido (IdPedido, IdProducto, Cantidad, PrecioUnitario) VALUES 
(1, 1, 1, 1200.00),
(1, 2, 2, 25.00),
(2, 3, 1, 45.00);
