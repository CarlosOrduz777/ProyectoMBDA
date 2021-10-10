--Llaves primarias
ALTER TABLE Tiendas ADD CONSTRAINT PK_nombre 
    PRIMARY KEY (nombre);
	
ALTER TABLE Tiendas ADD CONSTRAINT PK_direccion
    PRIMARY KEY (direccion);
	
ALTER TABLE TiendasProductos ADD CONSTRAINT PK_nombreTienda
    PRIMARY KEY (nombreTienda);
ALTER TABLE TiendasProductos ADD CONSTRAINT PK_direccionTienda
    PRIMARY KEY (direccionTienda);

ALTER TABLE TiendasProductos ADD CONSTRAINT PK_idProducto
    PRIMARY KEY (idProducto);
ALTER TABLE Productos ADD CONSTRAINT PK_id
    PRIMARY KEY (id);
ALTER TABLE Ordenes ADD CONSTRAINT PK_id
    PRIMARY KEY (id);
	
ALTER TABLE Calificaciones ADD CONSTRAINT PK_idOrden
    PRIMARY KEY (idOrden);

ALTER TABLE Cupones ADD CONSTRAINT PK_id
    PRIMARY KEY (id);
	
ALTER TABLE Telefonos ADD CONSTRAINT PK_idUsuario
    PRIMARY KEY (idUsuario);
ALTER TABLE Telefonos ADD CONSTRAINT PK_telefono
    PRIMARY KEY (telefono);
	
ALTER TABLE Domiciliarios ADD CONSTRAINT PK_id
    PRIMARY KEY (id);
	
ALTER TABLE Clientes ADD CONSTRAINT PK_id
    PRIMARY KEY (id);
ALTER TABLE Direcciones ADD CONSTRAINT PK_idCliente
    PRIMARY KEY (idCliente);
	
ALTER TABLE Direcciones ADD CONSTRAINT PK_direccion
    PRIMARY KEY (direccion);