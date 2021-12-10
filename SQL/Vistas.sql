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
--Vista para consulta de costo de una Orden
CREATE VIEW VCostoOrden AS
	(
		SELECT SUM(Costo) as COSTO FROM(SELECT unidades * TiendasProductos.precio as Costo FROM Productos
		JOIN TiendasProductos ON Productos.id = TiendasProductos.idProducto);
	);