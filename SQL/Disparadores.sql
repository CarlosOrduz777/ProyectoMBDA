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
/
--Generar ubicaciones aleatorias
CREATE OR REPLACE TRIGGER TG_DomiciliariosUb
BEFORE INSERT ON Domiciliarios
FOR EACH ROW
DECLARE
	ubicacionNum NUMBER(30);
BEGIN
	SELECT dbms_random.random 
	INTO ubicacionNum
	FROM dual;
	:NEW.ubicacion := TO_CHAR(ubicacionNum);
END;
/
--Asignar Id Clientes automaticamente
CREATE OR REPLACE TRIGGER TG_ClientesId
BEFORE INSERT ON Clientes
FOR EACH ROW

BEGIN
	SELECT idUs_seq.NEXTVAL
	INTO :NEW.id
	FROM dual;
END;
/
--Una orden no se puede borrar sin estar finalizada
CREATE OR REPLACE TRIGGER TG_Ordenes_BD
BEFORE DELETE ON Ordenes
FOR EACH ROW
BEGIN
IF (:OLD.estado <> 'F') THEN
	RAISE_APPLICATION_ERROR(-20002,'No se permite eliminar');
END IF;

END;
/
--Generar Costo automaticamente y agregar automaticamente ID de la orden
CREATE SEQUENCE idOrden_seq START WITH 1;

CREATE OR REPLACE TRIGGER TG_Ordenes_BI
BEFORE INSERT ON Ordenes
FOR EACH ROW
DECLARE
	costo NUMBER(8);
BEGIN
	SELECT idOrden_seq.NEXTVAL
	INTO :NEW.id 
	FROM dual;
	
	costo := SELECT TiendasProductos.precio*Productos.unidades as costo FROM Ordenes
	JOIN Productos ON Ordenes.id = Productos.idOrden
	JOIN TiendasProductos ON Productos.id = tiendasproductos.idproducto;
END;
/
--Generar ID producto automaticamente
CREATE SEQUENCE prod_seq START WITH 1;

CREATE OR REPLACE TRIGGER TG_Productos_BI
BEFORE INSERT ON Productos
FOR EACH ROW
BEGIN
	SELECT prod_seq.NEXTVAL
	INTO :NEW.id
	FROM dual;
END;
/
--Solo puede actualizar orden no aceptada
CREATE OR REPLACE TRIGGER TG_OrdenesUp_BU
BEFORE UPDATE ON Ordenes
FOR EACH ROW
BEGIN
	IF (:OLD.estado <> 'L') THEN
		RAISE_APPLICATION_ERROR(-20003,'No se puede actualizar');
	END IF;
END;
/
--Crear ID de la orden
