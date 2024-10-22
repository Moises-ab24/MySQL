USE TiendaOnline;

-- Ejercicios 1-10
-- 1. Obtén todos los clientes cuyo nombre sea "Juan Pérez". 
SELECT * FROM Clientes WHERE Nombre = 'Juan Pérez';

-- 2. Muestra todos los productos cuyo precio no sea igual a 100.
SELECT * FROM Productos WHERE Precio != 100;

-- 3. Encuentra todos los pedidos cuyo total sea mayor a 500. 
SELECT * FROM Pedidos WHERE Total > 500;

-- 4. Encuentra todos los productos con menos de 20 unidades en stock.
SELECT * FROM Productos WHERE Stock < 20;

-- 5. Muestra todos los clientes registrados después del 1 de enero de 2024.
SELECT * FROM Clientes WHERE Fecha_Registro > '2024-01-01';

-- 6. Obtén todos los productos con un precio entre 100 y 500. 
SELECT * FROM Productos WHERE Precio BETWEEN 100 AND 500;

-- 7. Encuentra todos los pedidos cuyo total no esté entre 200 y 1000. 
SELECT * FROM Productos WHERE Precio NOT BETWEEN 200 AND 1000;

-- 8. Muestra todos los clientes cuyo ID_Cliente sea 1, 3, o 5. 
SELECT * FROM Clientes WHERE ID_Cliente IN (1, 3, 5);

-- 9. Encuentra todos los productos cuyo ID_Producto no sea 2 ni 4.
SELECT * FROM Clientes WHERE ID_Cliente NOT IN (2, 4);
 
-- 10. Muestra todos los pedidos realizados en el año 2024.
SELECT * FROM Pedidos WHERE YEAR(fecha_pedido) = '2024';

-- Ejercicios 11-20
-- 11. Muestra todos los clientes y sus pedidos. 
SELECT
    Clientes.Nombre AS Cliente,
    Productos.Nombre AS Producto
FROM Clientes
JOIN Pedidos ON Clientes.ID_Cliente = Pedidos.ID_Cliente
JOIN Pedidos_Productos ON Pedidos.ID_Pedido = Pedidos_Productos.ID_Pedido
JOIN Productos ON Pedidos_Productos.ID_Producto = Productos.ID_Producto;

-- 12. Obtén todos los pedidos junto con los nombres de los productos y la cantidad de cada producto en esos pedidos.
SELECT
	Pedidos.ID_Pedido,
    Productos.Nombre AS Producto,
    Pedidos_Productos.Cantidad 
FROM Pedidos
JOIN Pedidos_Productos ON Pedidos.ID_Pedido = Pedidos_Productos.ID_Pedido
JOIN Productos ON Pedidos_Productos.ID_Producto = Productos.ID_Producto;

-- 13. Muestra el nombre de cada cliente y el número total de pedidos que ha realizado. **(usar COUNT, LEFT JOIN, GROUP BY)
SELECT
	Clientes.Nombre AS Cliente,
    COUNT(Pedidos.ID_Pedido) AS Total_Pedido
FROM Clientes
LEFT JOIN Pedidos ON Clientes.ID_Cliente = Pedidos.ID_Cliente
GROUP BY Clientes.ID_Cliente;

-- 14. Encuentra el nombre del cliente y el total gastado por cada uno. **(usar SUM, GROUP BY)
SELECT
	Clientes.Nombre AS Cliente,
    SUM(Pedidos.Total) AS Total_Gastado
FROM Clientes
JOIN Pedidos ON Clientes.ID_Cliente = Pedidos.ID_Cliente
GROUP BY Clientes.ID_Cliente;