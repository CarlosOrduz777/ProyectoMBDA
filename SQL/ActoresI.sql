--Actores I
CREATE OR REPLACE PACKAGE BODY PK_CLIENTE IS
	PROCEDURE adOrden(xid NUMBER,xobservaciones varchar,xhoraInicio varchar,xhoraFinalizacion varchar,xestado varchar,xmetodoPago varchar,xidCliente NUMBER, xidDomiciliario NUMBER) IS
	BEGIN
		INSERT INTO Ordenes(id,observaciones,horaInicio,horaFinalizacion,estado,metodoPago,idCliente,idDomiciliario) VALUES (xid,xobservaciones,xhoraInicio,xhoraFinalizacion,xestado,xmetodoPago,xidCliente,xidDomiciliario);
	END;
	PROCEDURE moOrden(xid NUMBER,xobservaciones varchar,xhoraInicio varchar,xhoraFinalizacion varchar,xestado varchar,xmetodoPago varchar,xidCliente NUMBER, xidDomiciliario NUMBER) IS
	BEGIN
		UPDATE SET observaciones = xobservaciones,
					horaInicio = xhoraInicio,
					horaFinalizacion = xhoraFinalizacion,
					estado = xestado,
					metodoPago = xmetodoPago,
					idCliente = xidCliente,
					idDomiciliario = xidDomiciliario
		WHERE id = xid;
	END;
	PROCEDURE elOrden(xid number) IS 
	BEGIN
		DELETE FROM Ordenes
			WHERE id = xid;
	END;
		
END PK_CLIENTE;
	