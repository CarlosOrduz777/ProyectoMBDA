--Vistas

CREATE VIEW VOrden AS
	(SELECT Ordenes.idOrden, Ordenes.idDomiciliario,Cupones.id
		FROM Ordenes
		JOIN Cupones ON  Ordenes.id=Cupones.idOrden
	);
	
CREATE VIEW VListaProductos AS
	(SELECT idOrden,idProducto,Productos.nombre FROM OrdenesProductos
		JOIN Productos ON OrdenesProductos.idProducto = Productos.id
	);