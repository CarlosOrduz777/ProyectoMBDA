--CRUD USUARIO

CREATE OR REPLACE PACKAGE PK_Usuario IS
	PROCEDURE adUsuario(nombre VARCHAR(20),correo VARCHAR(30), isCliente BOOLEAN);
	PROCEDURE moUsuario(idUs NUMBER(11), newCorreo VARCHAR(30));
	PROCEDURE elUsuario(idUs NUMBER(11));
	PROCEDURE coCliente(idUs NUMBER(11));
	PROCEDURE coDomiciliario(idUs NUMBER(11));
END;
/

--CRUD TIENDA

CREATE OR REPLACE PACKAGE PK_Tiendas IS
	PROCEDURE adTienda(nombreA VARCHAR(25),direccionA VARCHAR(25),horaAperturaA VARCHAR(5),horaCierreA VARCHAR(5), zonaA VARCHAR(10), disponibleA VARCHAR(1));
	PROCEDURE moTienda(nombreN VARCHAR(25),direccionN VARCHAR(25),horaAperturaN VARCHAR(5),horaCierreN VARCHAR(5), zonaN VARCHAR(10), disponibleN VARCHAR(1));
	PROCEDURE elTienda(nombreE VARCHAR(25),direccionE VARCHAR(25));
	PROCEDURE coTienda(nombreC VARCHAR(25),direccionC VARCHAR(25));
END;
/

--CRUD PRODUCTO

CREATE OR REPLACE PACKAGE PK_Producto IS
	PROCEDURE adProducto(nombreTiendaA VARCHAR(25),direccionTiendaA VARCHAR(25),descuentoA VARCHAR(1),marcaA VARCHAR(30),nombreA VARCHAR(25),descripcionA VARCHAR(100),pesoA VARCHAR(9),unidadesA NUMBER(3),precioA NUMBER(11,4));
	PROCEDURE moProducto(idM NUMBER(11));
	PROCEDURE elProducto(idE NUMBER(11));
	PROCEDURE coProducto(idC NUMBER(11));
END;
/