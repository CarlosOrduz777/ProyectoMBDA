--Consultar Tiendas
SELECT nombre FROM Tiendas

--Consultar productos con descuento
SELECT nombre FROM Productos
	WHERE descuento LIKE 'T'
	
--Consultar precio de un producto
SELECT precio FROM TiendasProductos
	join TiendasProductos ON Productos
	
	
--Consultar direccion de un cliente
SELECT direccion FROM Direcciones
	WHERE idCliente = 185092
	
--Consultar ordenes disponibles
SELECT observaciones, metodoPado FROM Ordenes
	WHERE estado LIKE 'L'