--Actores E

CREATE OR REPLACE PACKAGE PK_Cliente IS
	PROCEDURE adOrden(observacionesA VARCHAR,horaInicioA VARCHAR, horaFinalizacionA VARCHAR, estadoA VARCHAR, metodoPagoA VARCHAR, idClienteA NUMBER,idDomiciliarioA NUMBERR);
	PROCEDURE moOrden(observacionesA VARCHAR,metodoPagoA VARCHAR);
	PROCEDURE elOrden(idE NUMBER);
END PK_Cliente;
/
CREATE OR REPLACE PACKAGE PK_Domiliciario IS
	PROCEDURE modEstadoOrden(idM NUMBER,estadoA VARCHAR);
	PROCEDURE coOrden(idC NUMBER);
END PK_Domiliciario;
/
CREATE OR REPLACE PACKAGE PK_Gerente IS
	PROCEDURE adTienda(nombreA VARCHAR,direccionA VARCHAR,horaAperturaA VARCHAR,horaCierreA VARCHAR, zonaA VARCHAR, disponibleA VARCHAR);
	PROCEDURE moTienda(nombreN VARCHAR,direccionN VARCHAR,horaAperturaN VARCHAR,horaCierreN VARCHAR, zonaN VARCHAR, disponibleN VARCHAR);
	PROCEDURE elTienda(nombreE VARCHAR,direccionE VARCHAR);
	PROCEDURE coTienda(nombreC VARCHAR,direccionC VARCHAR);
	PROCEDURE adUsuario(nombreA VARCHAR,correoA VARCHAR, isCliente BOOLEAN);
	PROCEDURE elUsuario(idUs NUMBER);
	PROCEDURE coCliente(idUs NUMBER);
    PROCEDURE coDomiciliario(idUs NUMBER);
END PK_Gerente;
/

CREATE OR REPLACE PACKAGE PK_Tienda IS
	PROCEDURE adProducto(nombreTiendaA VARCHAR,direccionTiendaA VARCHAR,descuentoA VARCHAR,marcaA VARCHAR,nombreA VARCHAR,descripcionA VARCHAR,pesoA VARCHAR,unidadesA NUMBER,precioA NUMBER);
	PROCEDURE moProducto(idM NUMBER,descuentoM VARCHAR,marcaM VARCHAR,nombreM VARCHAR,descripcionM VARCHAR,pesoM VARCHAR,unidadesM NUMBER);
	PROCEDURE elProducto(idE NUMBER);
	PROCEDURE coProducto(idC NUMBER);
END PK_Tienda;
/




