--CRUD USUARIO

CREATE OR REPLACE PACKAGE PK_Usuario IS
	PROCEDURE adUsuario(nombreA VARCHAR,correoA VARCHAR, isCliente BOOLEAN);
	PROCEDURE moUsuario(idUs NUMBER, newCorreo VARCHAR);
	PROCEDURE elUsuario(idUs NUMBER);
	PROCEDURE coCliente(idUs NUMBER);
	PROCEDURE coDomiciliario(idUs NUMBER);
END;	
/

--CRUD TIENDA

CREATE OR REPLACE PACKAGE PK_Tiendas IS
	PROCEDURE adTienda(nombreA VARCHAR,direccionA VARCHAR,horaAperturaA VARCHAR,horaCierreA VARCHAR, zonaA VARCHAR, disponibleA VARCHAR);
	PROCEDURE moTienda(nombreN VARCHAR,direccionN VARCHAR,horaAperturaN VARCHAR,horaCierreN VARCHAR, zonaN VARCHAR, disponibleN VARCHAR);
	PROCEDURE elTienda(nombreE VARCHAR,direccionE VARCHAR);
	PROCEDURE coTienda(nombreC VARCHAR,direccionC VARCHAR);
END;
/

--CRUD PRODUCTO

CREATE OR REPLACE PACKAGE PK_Producto IS
	PROCEDURE adProducto(nombreTiendaA VARCHAR,direccionTiendaA VARCHAR,descuentoA VARCHAR,marcaA VARCHAR,nombreA VARCHAR,descripcionA VARCHAR,pesoA VARCHAR,unidadesA NUMBER,precioA NUMBER);
	PROCEDURE moProducto(idM NUMBER,descuentoM VARCHAR,marcaM VARCHAR,nombreM VARCHAR,descripcionM VARCHAR,pesoM VARCHAR,unidadesM NUMBER);
	PROCEDURE elProducto(idE NUMBER);
	PROCEDURE coProducto(idC NUMBER);
END;
/

--CRUD ORDENES
CREATE OR REPLACE PACKAGE PK_Orden IS
	PROCEDURE adOrden(observacionesA VARCHAR,horaInicioA VARCHAR, horaFinalizacionA VARCHAR, estadoA VARCHAR, costoA VARCHAR, metodoPagoA VARCHAR, idUsuarioA NUMBER);
	PROCEDURE moOrden(idM NUMBER, observacionesA VARCHAR,metodoPagoA VARCHAR);
	PROCEDURE modEstadoOrden(idM NUMBER,estadoA VARCHAR);
	PROCEDURE elOrden(idE NUMBER);
	PROCEDURE coOrden(idC NUMBER);
END;
