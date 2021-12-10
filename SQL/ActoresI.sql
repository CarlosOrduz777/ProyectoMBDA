--Actores I
CREATE OR REPLACE PACKAGE BODY PK_Cliente IS
	PROCEDURE adOrden(observacionesA VARCHAR,horaInicioA VARCHAR, horaFinalizacionA VARCHAR, estadoA VARCHAR, metodoPagoA VARCHAR, idClienteA NUMBER,idDomiciliarioA NUMBER) IS
	BEGIN
		exec PK_Orden.adOrden(observacionesA,horaInicioA,horaFinalizacionA,estadoA,metodoPagoA,idClienteA,idDomiciliarioA);
	END;
	PROCEDURE moOrden(idM NUMBER, observacionesA VARCHAR,metodoPagoA VARCHAR) IS
	BEGIN
		exec PK_Orden.moOrden(idM,observacionesA,metodoPagoA);
	END;
	PROCEDURE elOrden(idE NUMBER) IS 
	BEGIN
		exec PK_CLIENTE.elOrden(idE);
	END;
		
END PK_Cliente;


CREATE OR REPLACE PACKAGE BODY PK_Domiciliario IS
	PROCEDURE modEstadoOrden(idM NUMBER,estadoA VARCHAR) IS
	BEGIN
		exec PK_Orden.modEstadoOrden(idM,estadoA);
	END;
	
	PROCEDURE coOrden(idC NUMBER) IS
	BEGIN
		exec PK_Orden.coOrden(idC);
	END;
end PK_Domiciliario;

CREATE OR REPLACE PACKAGE BODY PK_Gerente IS
	PROCEDURE adTienda(nombreA VARCHAR,direccionA VARCHAR,horaAperturaA VARCHAR,horaCierreA VARCHAR, zonaA VARCHAR, disponibleA VARCHAR) IS
	BEGIN
		EXEC PK_Tiendas.adTienda(nombreA,direccionA,horaAperturaA,horaCierreA,zonaA,disponibleA);
	END;
	
	PROCEDURE moTienda(nombreN VARCHAR,direccionN VARCHAR,horaAperturaN VARCHAR,horaCierreN VARCHAR, zonaN VARCHAR, disponibleN VARCHAR) IS
	BEGIN
		EXEC PK_Tiendas.moTienda(nombreN,direccionN,horaAperturaN,horaCierreN,zonaN,disponibleN);
	END;
	
	PROCEDURE elTienda(nombreE VARCHAR,direccionE VARCHAR) IS
	BEGIN
		EXEC PK_Tiendas.elTienda(nombreE,direccionE);
	END;
	
	PROCEDURE coTienda(nombreC VARCHAR,direccionC VARCHAR) IS 
	BEGIN
		EXEC PK_Tiendas.coTienda(nombreC,direccionC);
	END;
	
	PROCEDURE adUsuario(nombreA VARCHAR,correoA VARCHAR, isCliente BOOLEAN) IS
	BEGIN
		EXEC PK_Usuario.adUsuario(nombreA,correoA,isCliente);
	END;
	PROCEDURE elUsuario(idUs NUMBER) IS
	BEGIN
		EXEC PK_Usuario.elUsuario(idUs);
	END;
	PROCEDURE coCliente(idUs NUMBER) IS
	BEGIN
		EXEC PK_Usuario.coCliente(idUs);
	END;
	PROCEDURE coDomiciliario(idUs NUMBER) IS
	BEGIN
		EXEC PK_Usuario.coDomiciliario(idUs);
	END;
END PK_Gerente;


CREATE OR REPLACE PACKAGE BODY PK_Tienda IS
	PROCEDURE adProducto(nombreTiendaA VARCHAR,direccionTiendaA VARCHAR,descuentoA VARCHAR,marcaA VARCHAR,nombreA VARCHAR,descripcionA VARCHAR,pesoA VARCHAR,unidadesA NUMBER,precioA NUMBER) IS
	BEGIN
		EXEC PK_Producto.adProducto(nombreTiendaA,direccionTiendaA,descuentoA,marcaA,nombreA,descripcionA,pesoA,unidadesA,precioA);
	END;
	
	PROCEDURE moProducto(idM NUMBER,descuentoM VARCHAR,marcaM VARCHAR,nombreM VARCHAR,descripcionM VARCHAR,pesoM VARCHAR,unidadesM NUMBER) IS
	BEGIN
		EXEC PK_Producto.moProducto(idM,descuentoM,marcaM,nombreM,descripcionM,pesoM,unidadesM);
	END;
	PROCEDURE elProducto(idE NUMBER) IS
	BEGIN
		EXEC PK_Producto.elProducto(idE);
	END;

	PROCEDURE coProducto(idC NUMBER) IS
	BEGIN
		EXEC PK_Producto.coProducto(idC);
	END;
END PK_Tienda;