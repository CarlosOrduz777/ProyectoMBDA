--Llaves primarias
ALTER TABLE Tiendas ADD CONSTRAINT PK_tiendas
    PRIMARY KEY (nombre, direccion);
	
ALTER TABLE TiendasProductos ADD CONSTRAINT PK_TiendasProductos
    PRIMARY KEY (nombreTienda, direccionTienda, idProducto);

ALTER TABLE Productos ADD CONSTRAINT PK_productos
    PRIMARY KEY (id);
ALTER TABLE Ordenes ADD CONSTRAINT PK_ordenes
    PRIMARY KEY (id);
	
ALTER TABLE Calificaciones ADD CONSTRAINT PK_calificaciones
    PRIMARY KEY (idOrden);

ALTER TABLE Cupones ADD CONSTRAINT PK_cupones
    PRIMARY KEY (id);
	
ALTER TABLE Telefonos ADD CONSTRAINT PK_telefonos
    PRIMARY KEY (codigo);
	
ALTER TABLE Domiciliarios ADD CONSTRAINT PK_Domiciliarios
    PRIMARY KEY (id);
	
ALTER TABLE Clientes ADD CONSTRAINT PK_clientes
    PRIMARY KEY (id);
ALTER TABLE Direcciones ADD CONSTRAINT PK_direcciones
    PRIMARY KEY (idCliente, direccion);