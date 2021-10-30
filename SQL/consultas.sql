--Consultar Tiendas
--Ponerlas mas complejas
SELECT nombre FROM Tiendas;

--Consultar productos con descuento
SELECT nombre FROM Productos
	WHERE descuento LIKE 'T';
	
--Consultar precio de un producto
--SELECT precio FROM TiendasProductos
--	join TiendasProductos ON Productos
    
--Consultar direccion de un cliente
SELECT direccion FROM Direcciones
	WHERE idCliente = 185092;
	
--Consultar ordenes disponibles
SELECT observaciones, metodoPago FROM Ordenes
	WHERE estado LIKE 'L';