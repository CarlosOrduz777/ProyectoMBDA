--Atributos

ALTER TABLE TiendasProductos ADD CONSTRAINT CK_PrecioProducto
	CHECK (precio > 0);
	
ALTER TABLE Calificaciones ADD CONSTRAINT CK_valoracion
	CHECK (valoracion <= 5 AND valoracion >= 1);
	
ALTER TABLE Productos ADD CONSTRAINT CK_unidades
	CHECK (unidades > 0);
	
ALTER TABLE Ordenes ADD CONSTRAINT CK_MetodoPago
	CHECK (metodoPago IN ('E','P','C','D'));
	
ALTER TABLE Ordenes ADD CONSTRAINT CK_Estado
	CHECK (Estado IN ('E','L','F'));
	
