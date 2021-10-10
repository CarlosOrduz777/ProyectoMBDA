CREATE TABLE Tiendas(
	nombre VARCHAR(25) NOT NULL,
	direccion VARCHAR(15) NOT NULL,
	horaApertura VARCHAR(5) NOT NULL,
	horaCierre VARCHAR(5) NOT NULL,
	zona VARCHAR(10) NOT NULL,
	disponible VARCHAR(1) NOT NULL

);
CREATE TABLE TiendasProductos(
	nombreTienda VARCHAR(25) NOT NULL,
	direccionTienda VARCHAR(15) NOT NULL,
	idProducto NUMBER(11) NOT NULL,
	precio INT NOT NULL


);
CREATE TABLE Productos(
	id NUMBER(11) NOT NULL,
	descuento VARCHAR(1) NOT NULL,
	marca VARCHAR(30) NOT NULL,
	nombre VARCHAR(15) NOT NULL,
	descripcion VARCHAR(100) NOT NULL,
	peso VARCHAR(9) NOT NULL,
	unidades NUMBER(3) NOT NULL,
	idOrden NUMBER(11) NOT NULL
);
CREATE TABLE Ordenes(
	id NUMBER(11) NOT NULL,
	observaciones VARCHAR(200),
	horaInicio VARCHAR(5) NOT NULL,
	horaFinalizacion VARCHAR(5) NOT NULL,
	estado VARCHAR(1) NOT NULL,
	costo VARCHAR(11) NOT NULL,
	metodoPago VARCHAR(1) NOT NULL,
	idUsuario NUMBER(11) NOT NULL

);
CREATE TABLE Calificaciones( 
	observaciones VARCHAR(200),
	valoracion NUMBER(1) NOT NULL,
	idOrden NUMBER(11) NOT NULL

);
CREATE TABLE Cupones(
	id NUMBER(11) NOT NULL,
	redimido VARCHAR(1) NOT NULL,
	idOrden NUMBER(11) NOT NULL
);
CREATE TABLE Clientes(
	id NUMBER(11) NOT NULL,
	nombre VARCHAR(20) NOT NULL,
	correo VARCHAR(30)

);
CREATE TABLE Domiciliarios(
	id NUMBER(11) NOT NULL,
	nombre VARCHAR(20) NOT NULL,
	correo VARCHAR(30),
	ubicacion VARCHAR(10) NOT NULL

);
CREATE TABLE Direcciones(
	idcliente NUMBER(11) NOT NULL,
	direccion VARCHAR(50) NOT NULL

);
CREATE TABLE Telefonos(
	idUsuario NUMBER(11) NOT NULL,
	telefono NUMBER(12) NOT NULL
);