CONSTRAINT FK_TiendasProductos_Productos FOREIGN KEY (idProducto) 
REFERENCES Productos(id);
ON DELETE CASCADE