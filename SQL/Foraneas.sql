--Llaves foraneas
ALTER TABLE TiendasProductos ADD CONSTRAINT FK_TiendasProductos_Tiendas
	FOREIGN KEY (nombreTienda, direccionTienda) REFERENCES Tiendas(nombre,direccion)
	ON DELETE CASCADE;
	

ALTER TABLE TiendasProductos ADD CONSTRAINT FK_TiendasProductos_Productos
	FOREIGN KEY (idProducto) REFERENCES Productos(id)
	ON DELETE CASCADE;
	
	
ALTER TABLE Ordenes ADD CONSTRAINT FK_Ordenes_Domiciliarios
	FOREIGN KEY (idDomiciliario) REFERENCES Domiciliarios(id)
	ON DELETE CASCADE;
ALTER TABLE Ordenes ADD CONSTRAINT FK_Ordenes_Clientes
	FOREIGN KEY (idCliente) REFERENCES Clientes(id)
	ON DELETE CASCADE;
	
ALTER TABLE Calificaciones ADD CONSTRAINT FK_Calificaciones_Ordenes
	FOREIGN KEY (idOrden) REFERENCES Ordenes(id)
	ON DELETE CASCADE;
	
ALTER TABLE Cupones ADD CONSTRAINT FK_Cupones_Ordenes
	FOREIGN KEY (idOrden) REFERENCES Ordenes(id)
	ON DELETE CASCADE;
	
ALTER TABLE Direcciones ADD CONSTRAINT FK_Direcciones_Clientes
	FOREIGN KEY (idCliente) REFERENCES Clientes(id)
	ON DELETE CASCADE;
	
ALTER TABLE Telefonos ADD CONSTRAINT FK_Telefonos_Clientes
	FOREIGN KEY (idCliente) REFERENCES Clientes(id)
	ON DELETE CASCADE;
ALTER TABLE Telefonos ADD CONSTRAINT FK_Telefonos_Domiciliarios
	FOREIGN KEY (idDomiciliario) REFERENCES Domiciliarios(id)
	ON DELETE CASCADE;


ALTER TABLE OrdenesProductos ADD CONSTRAINT FK_OrdenesPrductos_Productos
	FOREIGN KEY (idProducto) REFERENCES Productos(id)
	ON DELETE CASCADE;
ALTER TABLE OrdenesProductos ADD CONSTRAINT FK_OrdenesPrductos_Ordenes
	FOREIGN KEY (idOrden) REFERENCES Ordenes(id)
	ON DELETE CASCADE;