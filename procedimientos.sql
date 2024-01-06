-- Estudiante: Silvia Reyes --------

-- -------------------------------------------------------------------------------------------
-- 5. STORED PROCEDURES
-- -------------------------------------------------------------------------------------------
-- SELECT * FROM PRODUCTS;
-- SP #1: 

DROP PROCEDURE IF EXISTS DB_SPA.SP_ORDER_TABLE;
DELIMITER &&
CREATE PROCEDURE DB_SPA.SP_ORDER_TABLE (IN P_COLUMN VARCHAR(100),
									   IN P_ASC_DESC VARCHAR(20))
	BEGIN
		SET @sql = CONCAT('SELECT * FROM DB_SPA.PRODUCTS ORDER BY ', P_COLUMN, ' ', P_ASC_DESC);
		PREPARE statement_query FROM @sql;
		EXECUTE statement_query;
		DEALLOCATE PREPARE statement_query;
	END&&
DELIMITER ;

SET @P_COLUMN = 'nombre';
SET @P_ASC_DESC = 'ASC';
CALL DB_SPA.SP_ORDER_TABLE(@P_COLUMN, @P_ASC_DESC);
SELECT @P_COLUMN, @P_ASC_DESC;

-- SP #2:SP PARA INSERCIÓN DE DATOS EN LA TABLA PRODUCTS

DROP PROCEDURE IF EXISTS DB_SPA.SP_NEW_REGISTER;
DELIMITER //

CREATE PROCEDURE DB_SPA.SP_NEW_REGISTER (IN P_NOMBRE VARCHAR(100),
										 IN P_BRAND VARCHAR(100),
										 IN P_AMOUNT DOUBLE,
										 IN P_QUANTITY_IN_STOCK INT,
										 IN P_DESCRIPCION VARCHAR(300),
										 IN P_REGISTRATION_DATE DATE,
										 IN P_EXPIRATION_DATE DATE,
                                         OUT P_MENSAJE VARCHAR(100)
)
	BEGIN
		IF P_NOMBRE IS NULL OR P_BRAND IS NULL OR P_DESCRIPCION = '' THEN
			SET P_MENSAJE = CONCAT('Error: No se puede ingresar el producto con precio de: ', P_AMOUNT);
		ELSE
			INSERT INTO DB_SPA.PRODUCTS (nombre,
										 brand,
										 amount,
										 quantity_in_stock,
										 descripcion,
										 registration_date,
										 expiration_date) 
			VALUES (P_NOMBRE,
					P_BRAND,
					P_AMOUNT,
					P_QUANTITY_IN_STOCK,
					P_DESCRIPCION,
					P_REGISTRATION_DATE,
					P_EXPIRATION_DATE);
	END IF;
	END //

DELIMITER ;
SET @P_NOMBRE = NULL;
-- SET @P_NOMBRE = 'Mascarilla facial profunda';
SET @P_BRAND = NULL;
-- SET @P_BRAND = 'Facial world';
SET @P_AMOUNT = 98.00;
SET @P_QUANTITY_IN_STOCK = 12;
SET @P_DESCRIPCION = 'Mascarilla diseñada para el cuidado de la piel ayuda a exfoliar y renovar 
					  la epidermis, proporcionando una limpieza profunda y estimulando la regeneración 
                      celular. ';
SET @P_REGISTRATION_DATE = '2023-01-25';
SET @P_EXPIRATION_DATE = '2025-11-18';

CALL DB_SPA.SP_NEW_REGISTER(@P_NOMBRE, @P_BRAND, @P_AMOUNT, @P_QUANTITY_IN_STOCK, 
						   @P_DESCRIPCION, @P_REGISTRATION_DATE, @P_EXPIRATION_DATE, @P_MENSAJE);
                           
SELECT @P_NOMBRE, @P_BRAND, @P_AMOUNT, @P_QUANTITY_IN_STOCK, 
	   @P_DESCRIPCION, @P_REGISTRATION_DATE, @P_EXPIRATION_DATE, @P_MENSAJE;

select * from products;

-- -----------------------------------------------------------------------------------
-- -----------------------------------------------------------------------------------


