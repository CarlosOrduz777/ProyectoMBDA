--Llaves foraneas
--Ajustar Telefonos
ALTER TABLE TiendasProductos ADD CONSTRAINT FK_TiendasProductos_Tiendas
	FOREIGN KEY (nombreTienda, direccionTienda) REFERENCES Tiendas(nombre,direccion);

ALTER TABLE TiendasProductos ADD CONSTRAINT FK_TiendasProductos_Productos
	FOREIGN KEY (idProducto) REFERENCES Productos(id);
	
ALTER TABLE Productos ADD CONSTRAINT FK_Productos_Ordenes
	FOREIGN KEY (idOrden) REFERENCES Ordenes(id);
	
ALTER TABLE Ordenes ADD CONSTRAINT FK_Ordenes_Domiciliarios
	FOREIGN KEY (idUsuario) REFERENCES Domiciliarios(id);
ALTER TABLE Ordenes ADD CONSTRAINT FK_Ordenes_Clientes
	FOREIGN KEY (idUsuario) REFERENCES Clientes(id);
	
ALTER TABLE Calificaciones ADD CONSTRAINT FK_Calificaciones_Ordenes
	FOREIGN KEY (idOrden) REFERENCES Ordenes(id);
	
ALTER TABLE Cupones ADD CONSTRAINT FK_Cupones_Ordenes
	FOREIGN KEY (idOrden) REFERENCES Ordenes(id);
	
ALTER TABLE Direcciones ADD CONSTRAINT FK_Direcciones_Clientes
	FOREIGN KEY (idCliente) REFERENCES Clientes(id);
	
ALTER TABLE Telefonos ADD CONSTRAINT FK_Telefonos_Clientes
	FOREIGN KEY (idUsuario) REFERENCES Clientes(id);
ALTER TABLE Telefonos ADD CONSTRAINT FK_Telefonos_Domiciliarios
	FOREIGN KEY (idUsuario) REFERENCES Domiciliarios(id);
