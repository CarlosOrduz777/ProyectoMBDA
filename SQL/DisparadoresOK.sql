--DisparadoresOK
INSERT INTO Domiciliarios(nombre,correo,ubicacion) VALUES ('Juanita', null, '1806534-147896');
INSERT INTO Clientes(nombre,correo) VALUES ( 'Esteban', 'correo@gmail.com');

INSERT INTO Ordenes(id,observaciones,horaInicio,horaFinalizacion,estado,costo,metodoPago,idUsuario) VALUES (5,'papas bien crujientes','14:00','15:25','E',80000,'E',4);
DELETE FROM Ordenes WHERE id=5;


