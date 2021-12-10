--Seguridad

CREATE ROLE Cliente;

CREATE ROLE Domiliciario;

CREATE ROLE Gerente;

CREATE ROLE Tienda;

GRANT EXECUTE
ON PK_Cliente
to Cliente;
--SeguridadOk
exec PK_Cliente.adOrden(1,null,'14:00','14:25','F','E',1,6);
exec PK_Cliente.moOrden(1,'Hamburguesa sin cebolla','14:00',null,'E','C',3,8);
exec PK_Cliente.elOrden(1);