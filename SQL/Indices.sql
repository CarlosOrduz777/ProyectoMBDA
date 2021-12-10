CREATE INDEX precioProducto
	ON TiendasProductos(
		precio
	);
	
CREATE INDEX descuentoProducto
	ON Productos(
		descuento
	);