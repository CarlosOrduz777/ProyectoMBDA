--Actores E

CREATE OR REPLACE PACKAGE PK_Cliente IS
	PROCEDURE adOrden(xid NUMBER,xobservaciones varchar,xhoraInicio varchar,xhoraFinalizacion varchar,xestado varchar,xidDomiciliario number, xidCliente number);
	PROCEDURE moOrden(xid number,xobservaciones varchar,xestado varchar);
	PROCEDURE elOrden(xid number);
END PK_Cliente;
/
CREATE OR REPLACE PACKAGE PK_Domiliciario IS
	PROCEDURE moOrden(xid number,xestado varchar);
	PROCEDURE consultarOrden(xid number);
END PK_Domiliciario;
/







CREATE ROLE PK_Ciente;

CREATE ROLE PK_Domiliciario;

CREATE ROLE PK_Gerente;

CREATE ROLE PK_Tienda;