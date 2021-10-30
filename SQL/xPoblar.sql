--xPoblar
DELETE FROM Ordenes;
DELETE FROM Productos;
DELETE FROM Tiendas;
DELETE FROM TiendasProductos;
DELETE FROM Calificaciones;
DELETE FROM Cupones;
DELETE FROM Telefonos;
DELETE FROM Clientes;
DELETE FROM Direcciones;
DELETE FROM Domiciliarios;
--Borrar primero las tablas que referencian a otras y luego las tablas base