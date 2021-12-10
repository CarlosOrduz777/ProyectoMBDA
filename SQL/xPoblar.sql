--xPoblar
DELETE FROM OrdenesProductos;
DELETE FROM Cupones;
DELETE FROM Calificaciones;
DELETE FROM Ordenes;
DELETE FROM Direcciones;
DELETE FROM Telefonos;
DELETE FROM Domiciliarios;
DELETE FROM Clientes;
DELETE FROM TiendasProductos;
DELETE FROM Productos;
DELETE FROM Tiendas;
--Borrar primero las tablas que referencian a otras y luego las tablas base