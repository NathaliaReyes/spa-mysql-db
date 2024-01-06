-- Estudiante: Silvia Reyes --------

-- -------------------------------------------------------------------------
-- Creación de Triggers: Se van a crear Triggers para las tablas: Products y Customers
-- -------------------------------------------------------------------------
-- Creación de Triggers para la tabla Products:

-- Creación de primera tabla de control:
DROP TABLE IF EXISTS LOG_AUDITORIA;
CREATE TABLE IF NOT EXISTS LOG_AUDITORIA(
	ID_LOG INT AUTO_INCREMENT,
    NOMBRE_OPERACION VARCHAR(10),
    NOMBRE_TABLA VARCHAR(50),
    USUARIO VARCHAR(100),
    FECHA_UPD_INS_DEL DATE,
    HORA_UPD_INS_DEL TIME,
    PRIMARY KEY(ID_LOG)
);

-- Creación de segunda tabla de control:
DROP TABLE IF EXISTS LOG_AUDITORIA_2;
CREATE TABLE IF NOT EXISTS LOG_AUDITORIA_2(
	ID_LOG INT AUTO_INCREMENT,
    NOMBRE varchar(100) NOT NULL,
    ID INT,
    NOMBRE_OPERACION VARCHAR(10),
    NOMBRE_TABLA VARCHAR(50),
    USUARIO VARCHAR(100),
    FECHA_UPD_INS_DEL DATE,
    HORA_UPD_INS_DEL TIME,
    PRIMARY KEY(ID_LOG)
);

-- Creación del primer Trigger para la tabla Products, lo que controlará este trigger es la
-- Inserción de un nuevo producto proporcionando el nombre de la operación(en este caso INSERT), 
-- el nombre de la tabla, el usuario quien realizó la inserción, la hora y fecha exacta dentro de
-- la tabla LOG_AUDITORIA.

DROP TRIGGER IF EXISTS TRG_LOG_PRODUCTS;
DELIMITER //
CREATE TRIGGER TRG_LOG_PRODUCTS AFTER INSERT ON DB_SPA.PRODUCTS
FOR EACH ROW
BEGIN
	INSERT INTO LOG_AUDITORIA (NOMBRE_OPERACION, NOMBRE_TABLA, USUARIO, FECHA_UPD_INS_DEL, HORA_UPD_INS_DEL)
    VALUES ('INSERT', 'PRODUCTS', CURRENT_USER(), CURRENT_DATE(), CURRENT_TIME());
END//
DELIMITER ;

-- Sentencias auxiliares para revisar la creación de mis tablas PRODUCTS y LOG_AUDITORIA
-- Sólo para corroborar que se crearon con los tipos de datos acertados, ya que por ahora están vacías.

select * from PRODUCTS;
select * from LOG_AUDITORIA;

-- Creación del segundo Trigger para la tabla Products, lo que controlará este trigger es la
-- actualización de un producto ya existente, proporcionando el nombre del PRODUCTO(en este caso el 
-- antiguo y el nuevo), el id del producto, el nombre de la operación(en este caso UPDATE), 
-- el nombre de la tabla, el usuario quien realizó la inserción, la hora y fecha exacta y esto lo 
-- hará dentro de la tabla TRG_LOG_PRODUCTS_2.

DROP TRIGGER IF EXISTS TRG_LOG_PRODUCTS_2 ;
DELIMITER &&
CREATE TRIGGER TRG_LOG_PRODUCTS_2 BEFORE UPDATE ON DB_SPA.PRODUCTS
FOR EACH ROW 
BEGIN

	INSERT INTO LOG_AUDITORIA_2 (NOMBRE, ID, NOMBRE_OPERACION, NOMBRE_TABLA, USUARIO, FECHA_UPD_INS_DEL, HORA_UPD_INS_DEL)
    VALUES (CONCAT('NOMBRE ANTERIOR: ', OLD.NOMBRE, ' - NOMBRE NUEVO: ', NEW.NOMBRE), OLD.ID,
            'UPDATE', 'PRODUCTS', CURRENT_USER(), CURRENT_DATE(), CURRENT_TIME());

END&&
DELIMITER ;

-- Traemos los datos de la tabla Products para saber que dato voy a modificar o actualizar.
SELECT * FROM PRODUCTS; 
-- Hacemos la respectiva actualización.
UPDATE DB_SPA.PRODUCTS SET NOMBRE = 'Set de Aceites Esenciales para Masaje Facial' WHERE ID = 1 ; 
-- -- Posteriormente revisamos en la tabla de products.
SELECT * FROM PRODUCTS; 
-- Posteriormente revisamos en la tabla de auditoría: LOG_AUDITORIA_2 .
SELECT * FROM LOG_AUDITORIA_2 ;


-- -------------------------------------------------------------------
-- Creación de Triggers para la tabla: Customers.
-- -------------------------------------------------------------------

-- Creación de tercera tabla de control:
DROP TABLE IF EXISTS LOG_AUDITORIA_3;
CREATE TABLE IF NOT EXISTS LOG_AUDITORIA_3(
	ID_LOG INT AUTO_INCREMENT,
    EMAIL varchar(100) NOT NULL,
    ID INT,
    NOMBRE_OPERACION VARCHAR(10),
    NOMBRE_TABLA VARCHAR(50),
    USUARIO VARCHAR(100),
    FECHA_UPD_INS_DEL DATE,
    HORA_UPD_INS_DEL TIME,
    PRIMARY KEY(ID_LOG)
);

-- Creación del tercer Trigger para la tabla Customers, lo que controlará este trigger es la
-- Inserción de un nuevo cliente proporcionando el nombre de la operación(en este caso INSERT), 
-- el nombre de la tabla, el usuario quien realizó la inserción, la hora y fecha exacta dentro de
-- la tabla LOG_AUDITORIA.

DROP TRIGGER IF EXISTS TRG_LOG_CUSTOMERS_1;
DELIMITER //
CREATE TRIGGER TRG_LOG_CUSTOMERS_1 AFTER INSERT ON DB_SPA.CUSTOMERS
FOR EACH ROW
BEGIN
	INSERT INTO LOG_AUDITORIA (NOMBRE_OPERACION, NOMBRE_TABLA, USUARIO, FECHA_UPD_INS_DEL, HORA_UPD_INS_DEL)
    VALUES ('INSERT', 'CUSTOMERS', CURRENT_USER(), CURRENT_DATE(), CURRENT_TIME());
END//
DELIMITER ;

-- Sentencias auxiliares para revisar la creación de mis tablas CUSTOMERS y LOG_AUDITORIA
-- Sólo para corroborar que se crearon con los tipos de datos acertados, ya que por ahora la tabla Customers está vacía.

select * from CUSTOMERS;
select * from LOG_AUDITORIA;

-- Creación del cuarto Trigger para la tabla Customers, lo que controlará este trigger es la
-- actualización de un cliente ya existente, proporcionando el email del CLIENTE(en este caso el 
-- antiguo y el nuevo), el id del cliente, el nombre de la operación(en este caso UPDATE), 
-- el nombre de la tabla, el usuario quien realizó la inserción, la hora y fecha exacta y esto lo 
-- hará dentro de la tabla TRG_LOG_PRODUCTS_2.

-- Creación de tercera tabla de control:
DROP TABLE IF EXISTS LOG_AUDITORIA_3;
CREATE TABLE IF NOT EXISTS LOG_AUDITORIA_3(
	ID_LOG INT AUTO_INCREMENT,
    EMAIL varchar(100) NOT NULL,
    ID INT,
    NOMBRE_OPERACION VARCHAR(10),
    NOMBRE_TABLA VARCHAR(50),
    USUARIO VARCHAR(100),
    FECHA_UPD_INS_DEL DATE,
    HORA_UPD_INS_DEL TIME,
    PRIMARY KEY(ID_LOG)
);

DROP TRIGGER IF EXISTS TRG_LOG_CUSTOMERS_2 ;
DELIMITER &&
CREATE TRIGGER TRG_LOG_CUSTOMERS_2 BEFORE UPDATE ON DB_SPA.CUSTOMERS
FOR EACH ROW 
BEGIN

	INSERT INTO LOG_AUDITORIA_3 (EMAIL, ID, NOMBRE_OPERACION, NOMBRE_TABLA, USUARIO, FECHA_UPD_INS_DEL, HORA_UPD_INS_DEL)
    VALUES (CONCAT('EMAIL ANTERIOR: ', OLD.EMAIL, ' - EMAIL NUEVO: ', NEW.EMAIL), OLD.ID,
            'UPDATE', 'CUSTOMERS', CURRENT_USER(), CURRENT_DATE(), CURRENT_TIME());

END&&
DELIMITER ;

-- Traemos los datos de la tabla Customers para saber que dato voy a modificar o actualizar.
SELECT * FROM CUSTOMERS; 
-- Hacemos la respectiva actualización.
UPDATE DB_SPA.CUSTOMERS SET EMAIL = 'carolina123ciac@gmail.com' WHERE ID = 1 ; 
-- Posteriormente revisamos en la tabla de customers para ver el el dato si cambió.
SELECT * FROM CUSTOMERS; 
-- Posteriormente revisamos en la tabla de auditoría: LOG_AUDITORIA_2 .
SELECT * FROM LOG_AUDITORIA_3 ;
-- -------------------------------------------------------------------
-- -----FIN DE CREACIÓN DE TRIGGERS.----------------------------------
-- -------------------------------------------------------------------