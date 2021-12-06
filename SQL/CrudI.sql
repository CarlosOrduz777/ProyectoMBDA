--CRUD USUARIO
CREATE OR REPLACE PACKAGE BODY PK_Usuario IS
	PROCEDURE adUsuario(nombre VARCHAR(20),correo VARCHAR(30), isCliente BOOLEAN) IS
	BEGIN
		IF isCliente THEN
			INSERT INTO Clientes(id,nombre,correo) VALUES Clientes(0,nombre,correo);
		ELSE 
			INSERT INTO Domiciliarios(id,nombre,correo,ubicacion) VALUES Domiciliarios(0,nombre,correo,'ubicacion')
		END IF;
	END;
	
	PROCEDURE moUsuario(idUs NUMBER(11), newCorreo VARCHAR(30)) IS
	BEGIN
		UPDATE Clientes SET correo = newCorreo
		WHERE id = idUs;
		
		UPDATE Domiciliarios SET correo = newCorreo
		WHERE id = idUs;
	END;
	
	PROCEDURE elUsuario(idUs NUMBER(11)) IS
	BEGIN
		DELETE FROM Clientes
		WHERE id = idUs;
		
		DELETE FROM Domiciliarios
		WHERE id = idUs;
	END;
	
	PROCEDURE coCliente(idUs NUMBER(11)) IS
	BEGIN
		SELECT * FROM Clientes
		WHERE id = idUs;
	END;
	
	PROCEDURE coDomiciliario(idUs NUMBER(11)) IS
	BEGIN
		SELECT * FROM Domiciliarios
		WHERE id = idUs;
	END;
END;

--CRUD TIENDA

CREATE OR REPLACE PACKAGE BODY PK_Tiendas IS
	PROCEDURE adTienda(nombreA VARCHAR(25),direccionA VARCHAR(25),horaAperturaA VARCHAR(5),horaCierreA VARCHAR(5), zonaA VARCHAR(10), disponibleA VARCHAR(1)) IS
	BEGIN
		INTO Tiendas(nombre,direccion,horaApertura,horaCierre,zona,disponible) VALUES Tiendas(nombreA,direccionA,horaAperturaA,horaCierreA,zonaA,disponibleA)
	END;
	
	PROCEDURE moTienda(nombreN VARCHAR(25),direccionN VARCHAR(25),horaAperturaN VARCHAR(5),horaCierreN VARCHAR(5), zonaN VARCHAR(10), disponibleN VARCHAR(1)) IS
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
	
	PROCEDURE elTienda(nombreE VARCHAR(25),direccionE VARCHAR(25)) IS
	BEGIN
		DELETE FROM Tiendas
		WHERE nombre = nombreE AND direccion = direccionE;
	END;
	
	PROCEDURE coTienda(nombreC VARCHAR(25),direccionC VARCHAR(25)) IS
	BEGIN
		SELECT * FROM Tiendas
		WHERE nombre = nombreC AND direccion = direccionC;
	END;
END;
/
--CRUD PRODUCTO
CREATE OR REPLACE PACKAGE BODY PK_Producto IS
	PROCEDURE adProducto(nombreTiendaA VARCHAR(25),direccionTiendaA VARCHAR(25),descuentoA VARCHAR(1),marcaA VARCHAR(30),nombreA VARCHAR(25),descripcionA VARCHAR(100),pesoA VARCHAR(9),unidadesA NUMBER(3),precioA NUMBER(11,4)) IS
	BEGIN
		INSERT INTO Productos(id,descuento,marca,nombre,descripcion,peso,unidades) VALUES Productos(0,descuentoA,marcaA,nombreA,descripcionA,pesoA,unidadesA);
		INSERT INTO TiendasProductos(nombreTienda,direccionTienda,idProducto,precio) VALUES TiendasProductos(nombreTiendaA,direccionTiendaA,(SELECT MAX(id) FROM  Productos),precioA)
	END;
	
	PROCEDURE moProducto(idM NUMBER(11))IS
	BEGIN
	END;
	
	PROCEDURE elProducto(idE NUMBER(11))IS
	BEGIN
		DELETE FROM Productos
		WHEN id = idE;
	END;
	
	PROCEDURE coProducto(idC NUMBER(11))IS
	BEGIN
		SELECT * FROM Productos
		WHERE id = idC;
		
		SELECT * FROM TiendasProductos
		WHERE idProducto = idC;
	END;
END;