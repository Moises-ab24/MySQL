-- Crear la base de datos
CREATE DATABASE TiendaOnline;

-- Usar la base de datos
USE TiendaOnline;

-- Crear la tabla Direcciones (Relacion 1:1 con Clientes)
CREATE TABLE Direcciones (
ID_Direccion INT AUTO_INCREMENT PRIMARY KEY, -- Clave primaria de la direccion
Calle VARCHAR(255) NOT NULL,                 -- Calle de la direccion
Ciudad VARCHAR(100) NOT NULL,                -- Ciudad
Estado VARCHAR(100) NOT NULL,                -- Estado
Codigo_Postal VARCHAR(10) NOT NULL,          -- Código postal
País VARCHAR(100) NOT NULL                   -- País
);

-- Crear la tabla Direcciones (Relacion 1:1 con Direcciones) 
CREATE TABLE Clientes (
ID_Cliente INT AUTO_INCREMENT PRIMARY KEY,   -- Clave primaria de cliente
Nombre VARCHAR(100) NOT NULL,                -- Nombre del cliente
Email VARCHAR(100) NOT NULL,                 -- Email unico del cliente
Telefono VARCHAR(15) NOT NULL,               -- Telefono del cliente
Fecha_Registro DATE,                         -- Fecha de registro del cliente
ID_Direccion INT UNIQUE,                     -- Relacion 1:1 con Direcciones
FOREIGN KEY (ID_Direccion) REFERENCES Direcciones(ID_Direccion) -- Clave Foranea a Direcciones
);

-- Crear la tabla Productos
CREATE TABLE Productos (
ID_Producto INT AUTO_INCREMENT PRIMARY KEY,  -- Clave primaria de productos
Nombre VARCHAR(100) NOT NULL,                -- Nombre del producto
Descripcion TEXT,                            -- Descripcion del producto
Precio DECIMAL(10, 2) NOT NULL,              -- Precio del producto
Stock INT NOT NULL,                          -- Cantidad en stock
Fecha_Agregado DATE                          -- Fecha en la que se agrego el producto
);

-- Crear la tabla Pedidos (Relacion 1:N con Clientes)
CREATE TABLE Pedidos (
ID_Pedido INT AUTO_INCREMENT PRIMARY KEY,    -- Clave primaria de pedidos
ID_Cliente INT,                              -- Relacion con Clientes (1:N)
Fecha_Pedido DATE NOT NULL,                  -- Fecha en que se hizo el pedido
Estado VARCHAR(50),                          -- Estado del pedido (Ej. En proceso, Enviar, etc
Total DECIMAL(10, 2),                        -- Total del pedido
FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID_Cliente) -- Clave foranea a Clientes
);

-- Crear la tabla intermedia Pedidos_Productos (Relacion N:M entre Pedidos y Productos)
CREATE TABLE Pedidos_Productos (
ID_Pedido INT,								 -- Relacion con Pedidos
ID_Producto INT,                             -- Relacion con Productos
Cantidad INT NOT NULL,                       -- Cantidad de producto en el pedido
Precio_Unitario DECIMAL(10, 2) NOT NULL,     -- Precio del producto al momento del pedido
PRIMARY KEY (ID_Pedido, ID_Producto),        -- Clave primaria compuiesta (relacion N:M)
FOREIGN KEY (ID_Pedido) REFERENCES Pedidos(ID_Pedido), -- Clave foranea a Pedidos
FOREIGN KEY (ID_Producto) REFERENCES Productos(ID_Producto) -- Clave foranea a Productos
);