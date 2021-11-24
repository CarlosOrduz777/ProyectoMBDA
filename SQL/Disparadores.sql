--Disparadores
	--Asignar Id Domiciliarios automaticamente
	CREATE SEQUENCE idUs_seq START WITH 1;
	
	CREATE OR REPLACE TRIGGER TG_DomiciliariosId
	BEFORE INSERT ON Domiciliarios
	FOR EACH ROW

	BEGIN
		SELECT idUs_seq.NEXTVAL
		INTO :NEW.id
		FROM dual;
	END;
	
	--Asignar Id Clientes automaticamente
	CREATE OR REPLACE TRIGGER TG_ClientesId
	BEFORE INSERT ON Clientes
	FOR EACH ROW

	BEGIN
		SELECT idUs_seq.NEXTVAL
		INTO :NEW.id
		FROM dual;
	END;
	
	--Una orden no se puede borrar sin estar finalizada
	CREATE OR REPLACE TRIGGER TG_Ordenes_BD
	BEFORE DELETE ON Ordenes
	FOR EACH ROW
	BEGIN
	IF (:OLD.estado <> 'F') THEN
		RAISE_APPLICATION_ERROR(-20002,'No se permite eliminar');
	END IF;

	END;
	
	--Generar Costo automaticamente
	CREATE OR REPLACE TRIGGER TG_Ordenes_BI
	BEFORE INSERT ON Ordenes
	FOR EACH ROW
	DECLARE
		costo NUMBER(8);
	BEGIN
		SELECT Productos.idOrden,id FROM Ordenes
		JOIN ON
			id := Productos.idOrden
		GROUP BY id;
	END;