--PoblarOk

INSERT INTO Tiendas(nombre, direccion, horaApertura,horaCierre,zona,disponible) VALUES ('KFC', 'Cll 23 #22-10', '10:00', '22:00', 'chicó', 'T');
INSERT INTO Tiendas(nombre, direccion, horaApertura,horaCierre,zona,disponible) VALUES ('Presto', 'Cra 107 #22A-10', '10:00', '20:00', 'usaquen', 'F');
INSERT INTO Tiendas(nombre, direccion, horaApertura,horaCierre,zona,disponible) VALUES ('Donde Pablo', 'Tran 23 #93-70', '8:00', '22:00', 'norte', 'F');
INSERT INTO Tiendas(nombre, direccion, horaApertura,horaCierre,zona,disponible) VALUES ('Mi tiendita', 'Calle 59 #45-15', '11:00', '22:00', 'chicó', 'T');
INSERT INTO Tiendas(nombre, direccion, horaApertura,horaCierre,zona,disponible) VALUES ('Come de to', 'Calle 44D #45-30', '13:00', '18:00', 'Rafael', 'T');

INSERT INTO Productos(id,descuento,marca,nombre,descripcion,peso,unidades) VALUES (1,'T','Alpina','Leche','Leche deslactosada', '350ml', 1);
INSERT INTO Productos(id,descuento,marca,nombre,descripcion,peso,unidades) VALUES (2,'F','Presto','Hamburguesa Doble','Hamburguesa doble carne', '100g', 1);
INSERT INTO Productos(id,descuento,marca,nombre,descripcion,peso,unidades) VALUES (3,'T','La Lechera','Leche condensada','Leche condensada', '350ml', 1);
INSERT INTO Productos(id,descuento,marca,nombre,descripcion,peso,unidades) VALUES (4,'T','Alqueria','Leche','Leche deslactosada', '350ml', 2);
INSERT INTO Productos(id,descuento,marca,nombre,descripcion,peso,unidades) VALUES (5,'T','Presto','Hamburguesa simple combo','Hamburguesa simple carne y gaseosa', '150 g', 1);

INSERT INTO TiendasProductos(nombreTienda,direccionTienda,idProducto,precio) VALUES ('Presto', 'Cra 107 #22A-10',2,15000);
INSERT INTO TiendasProductos(nombreTienda,direccionTienda,idProducto,precio) VALUES ('Donde Pablo', 'Tran 23 #93-70',1,2500);
INSERT INTO TiendasProductos(nombreTienda,direccionTienda,idProducto,precio) VALUES ('Mi tiendita', 'Calle 59 #45-15',1,3000);
INSERT INTO TiendasProductos(nombreTienda,direccionTienda,idProducto,precio) VALUES ('Presto', 'Cra 107 #22A-10',5,25000);
INSERT INTO TiendasProductos(nombreTienda,direccionTienda,idProducto,precio) VALUES ('Donde Pablo', 'Tran 23 #93-70',4,1500);

INSERT INTO Ordenes(id,observaciones,horaInicio,horaFinalizacion,estado,costo,metodoPago,idUsuario) VALUES (1,null,'14:00','14:25','F',35000,'E',1);
INSERT INTO Ordenes(id,observaciones,horaInicio,horaFinalizacion,estado,costo,metodoPago,idUsuario) VALUES (2,null,'18:00','19:25','F',34560,'P',2);
INSERT INTO Ordenes(id,observaciones,horaInicio,horaFinalizacion,estado,costo,metodoPago,idUsuario) VALUES (3,'Hamburguesa sin cebolla','14:00',null,'E',35000,'C',3);
INSERT INTO Ordenes(id,observaciones,horaInicio,horaFinalizacion,estado,costo,metodoPago,idUsuario) VALUES (4,null,'16:15',null,'L',35000,'P',1);
INSERT INTO Ordenes(id,observaciones,horaInicio,horaFinalizacion,estado,costo,metodoPago,idUsuario) VALUES (5,'papas bien crujientes','14:00','15:25','F',80000,'E',4);

INSERT INTO Calificaciones(observaciones,valoracion,idOrden) VALUES (NULL,5,1);
INSERT INTO Calificaciones(observaciones,valoracion,idOrden) VALUES (NULL,4,2);
INSERT INTO Calificaciones(observaciones,valoracion,idOrden) VALUES ('No traia papas',2,3);
INSERT INTO Calificaciones(observaciones,valoracion,idOrden) VALUES (NULL,4,4);
INSERT INTO Calificaciones(observaciones,valoracion,idOrden) VALUES ('No fue lo que pedí',1,5);

INSERT INTO Cupones(id,redimido,idOrden,descuento) VALUES (1, 'F', 1,40);
INSERT INTO Cupones(id,redimido,idOrden,descuento) VALUES (8, 'T', 2,20);
INSERT INTO Cupones(id,redimido,idOrden,descuento) VALUES (125, 'T', 3,35);
INSERT INTO Cupones(id,redimido,idOrden,descuento) VALUES (11457, 'F', 5,25);
INSERT INTO Cupones(id,redimido,idOrden,descuento) VALUES (15, 'T', 1,15);

INSERT INTO Clientes(id,nombre,correo) VALUES (1, 'Daniel', 'ejemplo@outlook.com');
INSERT INTO Clientes(id,nombre,correo) VALUES (2, 'Carlos', NULL);
INSERT INTO Clientes(id,nombre,correo) VALUES (3, 'Juan', NULL);
INSERT INTO Clientes(id,nombre,correo) VALUES (4, 'Esteban', 'correo@gmail.com');
INSERT INTO Clientes(id,nombre,correo) VALUES (5, 'Daniel', NULL);

INSERT INTO Telefonos(idUsuario,telefono) VALUES (1,'3132237319');
INSERT INTO Telefonos(idUsuario,telefono) VALUES (6,'3178254343');
INSERT INTO Telefonos(idUsuario,telefono) VALUES (8,'3014851246');
INSERT INTO Telefonos(idUsuario,telefono) VALUES (2,'3142237412');
INSERT INTO Telefonos(idUsuario,telefono) VALUES (1,'3017488370');

INSERT INTO Direcciones(idCliente,direccion) VALUES (1,'Cra 63 #22-10');
INSERT INTO Direcciones(idCliente,direccion) VALUES (2,'Cra 68 #26A-10');
INSERT INTO Direcciones(idCliente,direccion) VALUES (3,'Cll 63 #22-10');
INSERT INTO Direcciones(idCliente,direccion) VALUES (4,'Tran 5 #92-40');
INSERT INTO Direcciones(idCliente,direccion) VALUES (3,'Cra 108 #23-19');

INSERT INTO Domiciliarios(id,nombre,correo,ubicacion) VALUES (6,'Juanita', null, '1806534-147896');
INSERT INTO Domiciliarios(id,nombre,correo,ubicacion) VALUES (7,'Juanito', 'juanito@gmail.com', '1834884-147861');
INSERT INTO Domiciliarios(id,nombre,correo,ubicacion) VALUES (8,'Esteban', null, '1801579-142796');
INSERT INTO Domiciliarios(id,nombre,correo,ubicacion) VALUES (9,'Laura', null, '1782534-142476');
INSERT INTO Domiciliarios(id,nombre,correo,ubicacion) VALUES (10,'Alfonso', 'Correo_ing@hotmail.com', '65478234-14172173');