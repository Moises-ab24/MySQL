USE TiendaOnline;

--  1. INSERT para la tabla Direciones
INSERT INTO Direcciones (Calle, Ciudad, Estado, Codigo_Postal, País) VALUES
('Calle Falsa 123', 'Ciudad X', 'Estado Y', '12345', 'Pais Z'),
('Avenida Siempre Viva 742', 'Springfield', 'Ilinois', '54321', 'USA'),
('Av. del Sol 456', 'Madrid', 'Madrid', '28001', 'España'),
('Rua Alegria 789', 'São Paulo', 'SP', '01000-000', 'Brasil'),
('Calle Luna 12', 'Ciudad de Mexico', 'CDMX', '06700', 'Mexico');

-- 2. INSERT para la tabla Clientes
INSERT INTO Clientes (Nombre, Email, Telefono, Fecha_Registro, ID_Direccion) VALUES
('Juan Pérez', 'juan.perez@example.com', '555-1234', '2024-01-10', 1),
('María García', 'maria.garcia@example.com', '555-5678', '2024-01-11', 2),
('Pedro López', 'pedro.lopez@example.com', '555-9012', '2024-01-10', 3),
('Ana Gonzáles', 'ana.gonzales@example.com', '555-3456', '2024-01-10', 4),
('Luis Fernández', 'luis.fernandez@example.com', '555-7890', '2024-01-10', 5);

-- 3. INSERT para la tabla Productos
INSERT INTO Productos (Nombre, Descripcion, Precio, Stock, Fecha_Agregado) VALUES
('Laptop HP', 'Laptop HP con 16GB de RAM', 799.99, 20, '2024-01-01'), 
('iPhone 14', 'iPhone 14 con 128GB de almacenamiento', 999.99, 30, '2024-01-02'), 
('Samsung Galaxy S21', 'Samsung Galaxy con pantalla de 6.5 pulgadas', 699.99, 15, '2024-01-03'), 
('Televisor LG 55', 'Televisor LG 4K de 55 pulgadas', 599.99, 10, '2024-01-04'), 
('Audífonos Sony', 'Audífonos Sony inalámbricos con cancelación de ruido', 199.99, 50, '2024-01-05');

-- 4. INSERT para la tabla Pedidos
INSERT INTO Pedidos (ID_Cliente, Fecha_Pedido, Estado, Total) VALUES
(1, '2024-02-01', 'En proceso', 1599.98),
(2, '2024-02-02', 'Enviado', 999.99),
(3, '2024-02-03', 'Entregado', 1399.98),
(4, '2024-02-04', 'En proceso', 599.99),
(5, '2024-02-05', 'Enviado', 199.99);

-- 5. INSERT para la tabla intermedia Pedidos_Productos (Relación muchos a muchos)
INSERT INTO Pedidos_Productos (ID_Pedido, ID_Producto, Cantidad, Precio_Unitario) VALUES
-- Pedido 1 incluye 2 productos
(1, 1, 1, 799.99),
(1, 2, 1, 799.99),
-- Pedido 2 incluye 1 producto
(2, 2, 1, 999.99),
-- Pedido 3 incluye 2 productos
(3, 2, 1, 699.99),
-- Pedido 4 incluye 1 producto
(4, 4, 1, 599.99),
-- Pedido 5 incluye 1 producto
(5, 5, 1, 199.99);

