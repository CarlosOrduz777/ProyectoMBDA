--Actores E

CREATE OR REPLACE PACKAGE PK_Cliente IS
	PROCEDURE adOrden(xid NUMBER,xobservaciones varchar,xhoraInicio varchar,xhoraFinalizacion varchar,xestado varchar,xidCliente NUMBER, xidDomiciliario NUMBER);
	PROCEDURE moOrden(xid NUMBER,xobservaciones varchar,xhoraInicio varchar,xhoraFinalizacion varchar,xestado varchar,xmetodoPago varchar,xidCliente NUMBER, xidDomiciliario NUMBER);
	PROCEDURE elOrden(xid number);
END PK_Cliente;
/
CREATE OR REPLACE PACKAGE PK_Domiliciario IS
	PROCEDURE moOrden(xid number,xestado varchar);
	PROCEDURE consultarOrden(xid number);
END PK_Domiliciario;
/
CREATE OR REPLACE PACKAGE PK_Gerente IS
	PROCEDURE adTienda(xnombre varchar, xdireccion varchar, xhoraApertura varchar,xhoraCierre varchar,xzona varchar,xdisponible varchar);
	PROCEDURE moTienda(xnombre varchar, xdireccion varchar, xhoraApertura varchar,xhoraCierre varchar,xzona varchar,xdisponible varchar);
	PROCEDURE elTienda(xnombre varchar,xdireccion varchar);
	PROCEDURE coTienda(xnombre varchar,xdireccion varchar);
	PROCEDURE adUsuario();
	PROCEDURE elUsuario();
	PROCEDURE coUsuario();
END PK_Gerente;
/

CREATE OR REPLACE PACKAGE PK_Tienda IS
	PROCEDURE adProducto();
	PROCEDURE moProducto();
	PROCEDURE elProducto();
	PROCEDURE coProducto();
END PK_Tienda;
/




CREATE ROLE PK_Cliente;

CREATE ROLE PK_Domiliciario;

CREATE ROLE PK_Gerente;

CREATE ROLE PK_Tienda;