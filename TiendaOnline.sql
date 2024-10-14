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
FOREIGN KEY (ID_Direccion) REFERENCES Direcciones(ID_Direccion) -- Clave Foranea
);