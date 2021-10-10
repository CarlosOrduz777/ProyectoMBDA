--PoblarNoOk

--Precio negativo
INSERT INTO TiendasProductos(nombreTienda,direccionTienda,idProducto,precio) VALUES ('Presto', 'Cra 107 #22A-10',2,-15000);
--valoracion negativa
INSERT INTO Calificaciones(observaciones,valoracion,idOrden) VALUES ('No traia papas',-8,3);
--unidades de producto igual a 0
INSERT INTO Productos(id,descuento,marca,nombre,descripcion,peso,unidades,idOrden) VALUES (1,'T','Alpina','Leche','Leche deslactosada', '350ml', 0, 14596);
--No cumplen con los requirimientos de tipo
INSERT INTO Ordenes(id,observaciones,horaInicio,horaFinalizacion,estado,costo,metodoPago,idUsuario) VALUES (2,null,'18:00','19:25','F',34560,'U',2);
INSERT INTO Ordenes(id,observaciones,horaInicio,horaFinalizacion,estado,costo,metodoPago,idUsuario) VALUES (5,'papas bien crujientes','14:00','15:25','T',80000,'E',4);
--Null donde no deberia
INSERT INTO Cupones(id,redimido,idOrden) VALUES (15, null, 1);
--Se sale de longitud de tipo
INSERT INTO Ordenes(id,observaciones,horaInicio,horaFinalizacion,estado,costo,metodoPago,idUsuario) VALUES (12345678912,null,'14:00','14:25','F',35000,'E',1);
