--Llaves Unicas
ALTER TABLE Clientes ADD CONSTRAINT UK_Clientes
	UNIQUE (correo);
ALTER TABLE Domiciliarios ADD CONSTRAINT UK_Domiciliarios
	UNIQUE (correo);
