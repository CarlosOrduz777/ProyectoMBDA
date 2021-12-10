--CRUD USUARIO

CREATE OR REPLACE PACKAGE BODY PK_Usuario IS
	PROCEDURE adUsuario(nombreA VARCHAR,correoA VARCHAR, isCliente BOOLEAN) IS
	BEGIN
		IF isCliente THEN
			INSERT INTO Clientes(id,nombre,correo) VALUES (0,nombreA,correoA);
		ELSE 
			INSERT INTO Domiciliarios(id,nombre,correo,ubicacion) VALUES (0,nombreA,correoA,'ubicacion');
		END IF;
	END;
	
	PROCEDURE moUsuario(idUs NUMBER, newCorreo VARCHAR) IS
	BEGIN
		UPDATE Clientes SET correo = newCorreo
		WHERE id = idUs;
		
		UPDATE Domiciliarios SET correo = newCorreo
		WHERE id = idUs;
	END;
	
	PROCEDURE elUsuario(idUs NUMBER) IS
	BEGIN
		DELETE FROM Clientes
		WHERE id = idUs;
		
		DELETE FROM Domiciliarios
		WHERE id = idUs;
	END;
	
	PROCEDURE coCliente(idUs NUMBER) IS
    
	BEGIN
        DECLARE mostrar VARCHAR(30);
        BEGIN
            SELECT nombre INTO mostrar FROM Clientes
            WHERE id = idUs;
            DBMS_OUTPUT.put_line(mostrar);
        END;
	END;
	
	PROCEDURE coDomiciliario(idUs NUMBER) IS
	BEGIN
		DECLARE mostrar VARCHAR(30);
        BEGIN
            SELECT nombre INTO mostrar FROM Clientes
            WHERE id = idUs;
            DBMS_OUTPUT.put_line(mostrar);
        END;
	END;
END;
/


--CRUD TIENDA

CREATE OR REPLACE PACKAGE BODY PK_Tiendas IS
	PROCEDURE adTienda(nombreA VARCHAR,direccionA VARCHAR,horaAperturaA VARCHAR,horaCierreA VARCHAR, zonaA VARCHAR, disponibleA VARCHAR) IS
	BEGIN
		INSERT INTO Tiendas(nombre,direccion,horaApertura,horaCierre,zona,disponible) VALUES (nombreA,direccionA,horaAperturaA,horaCierreA,zonaA,disponibleA);
	END;
	
	PROCEDURE moTienda(nombreN VARCHAR,direccionN VARCHAR,horaAperturaN VARCHAR,horaCierreN VARCHAR, zonaN VARCHAR, disponibleN VARCHAR) IS
	BEGIN
		UPDATE Tiendas SET horaApertura = horaAperturaN
		WHERE nombre = nombreN AND direccion = direccionN;
		
		UPDATE Tiendas SET horaCierre = horaCierreN
		WHERE nombre = nombreN AND direccion = direccionN;
		
		UPDATE Tiendas SET zona = zonaN
		WHERE nombre = nombreN AND direccion = direccionN;
		
		UPDATE Tiendas SET disponible = disponibleN
		WHERE nombre = nombreN AND direccion = direccionN;
	END;
	
	PROCEDURE elTienda(nombreE VARCHAR,direccionE VARCHAR) IS
	BEGIN
		DELETE FROM Tiendas
		WHERE nombre = nombreE AND direccion = direccionE;
	END;
	
	PROCEDURE coTienda(nombreC VARCHAR,direccionC VARCHAR) IS
	BEGIN
		DECLARE mostrar VARCHAR(30);
        BEGIN
            SELECT nombre INTO mostrar FROM Tiendas
			WHERE nombre = nombreC AND direccion = direccionC;
            DBMS_OUTPUT.put_line(mostrar);
        END;
	END;
END;
/
--CRUD PRODUCTO
CREATE OR REPLACE PACKAGE BODY PK_Producto IS
	PROCEDURE adProducto(nombreTiendaA VARCHAR,direccionTiendaA VARCHAR,descuentoA VARCHAR,marcaA VARCHAR,nombreA VARCHAR,descripcionA VARCHAR,pesoA VARCHAR,unidadesA NUMBER,precioA NUMBER) IS
	BEGIN
        DECLARE 
            counter INTEGER;
            idProd INTEGER;
        BEGIN
            SELECT count(nombre) into counter FROM Tiendas WHERE nombre = nombreTiendaA;
            SELECT MAX(id) INTO idProd FROM  Productos;
            IF (counter > 0) THEN
                INSERT INTO Productos(id,descuento,marca,nombre,descripcion,peso,unidades) values (0,descuentoA,marcaA,nombreA,descripcionA,pesoA,unidadesA);
                INSERT INTO TiendasProductos(nombreTienda,direccionTienda,idProducto,precio) VALUES (nombreTiendaA,direccionTiendaA,idProd,precioA);
            ELSE
                raise_application_error(-20050,'No existe tienda asociada');
            END IF;
        END;
		
	END;
	
	PROCEDURE moProducto(idM NUMBER,descuentoM VARCHAR,marcaM VARCHAR,nombreM VARCHAR,descripcionM VARCHAR,pesoM VARCHAR,unidadesM NUMBER)IS
	BEGIN
		UPDATE Productos SET descuento = descuentoM
		WHERE id =idM;
		
		UPDATE Productos SET marca = marcaM
		WHERE id =idM;
		
		UPDATE Productos SET nombre = nombreM
		WHERE id =idM;
		
		UPDATE Productos SET descripcion = descripcionM
		WHERE id =idM;
		
		UPDATE Productos SET peso = pesoM
		WHERE id =idM;
		
		UPDATE Productos SET unidades = unidadesM
		WHERE id =idM;
	END;
	
	PROCEDURE elProducto(idE NUMBER)IS
	BEGIN
		DELETE FROM Productos
		WHERE id = idE;
	END;
	
	PROCEDURE coProducto(idC NUMBER)IS
	BEGIN
		DECLARE 
        mostrar VARCHAR(30);
        mostrar1 NUMBER;
        BEGIN
            SELECT nombre INTO mostrar FROM Productos
			WHERE id = idC;
		
			SELECT tiendasproductos.idproducto  INTO mostrar1 FROM TiendasProductos
			WHERE idProducto = idC;
            DBMS_OUTPUT.put_line(mostrar);
        END;
		
	END;
END;
/

--CRUD ORDENES
CREATE OR REPLACE PACKAGE BODY PK_Orden IS
	PROCEDURE adOrden(observacionesA VARCHAR,horaInicioA VARCHAR, horaFinalizacionA VARCHAR, estadoA VARCHAR, metodoPagoA VARCHAR, idClienteA NUMBER,idDomiciliarioA NUMBER) IS
	BEGIN
		INSERT INTO Ordenes(id,observaciones,horaInicio,horaFinalizacion,estado,metodoPago,idCliente,idDomiciliario) VALUES (0,observacionesA,horaInicioA,horaFinalizacionA,estadoA,metodoPagoA,idClienteA,idDomiciliarioA);
	END;
	PROCEDURE moOrden(idM NUMBER, observacionesA VARCHAR,metodoPagoA VARCHAR) IS
	BEGIN
		UPDATE Ordenes SET observaciones = observacionesA
		WHERE id = idM;
		
		UPDATE Ordenes SET metodoPago = metodoPagoA
		WHERE id = idM;
	END;
	PROCEDURE modEstadoOrden(idM NUMBER,estadoA VARCHAR) IS
	BEGIN
		UPDATE Ordenes SET estado = estado
		WHERE id = idM;
	END;
	PROCEDURE elOrden(idE NUMBER)  IS
	BEGIN
		DELETE FROM Ordenes
		WHERE id = idE;
	END;
	PROCEDURE coOrden(idC NUMBER) IS
	BEGIN
		DECLARE mostrar VARCHAR(30);
        BEGIN
            SELECT estado INTO mostrar FROM Ordenes
			WHERE id = idC;
            DBMS_OUTPUT.put_line(mostrar);
        END;
		
	END;
END;
/