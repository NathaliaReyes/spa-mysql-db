-- ---------Sentencias del sublenguaje TCL -----------------
-- ---------Alumna_Silvia_Reyes ----------------------------

-- Elige dos tablas de las presentadas en el proyecto. Realizar una serie de modificaciones
-- en los registros, controladas por transacciones.
-- Elegimos 2 tablas a trabajar en este caso, tabla customers y tabla products.

SELECT @@autocommit;
SET @@autocommit = 1;-- para todas las sentencias DML , hay un commit por defecto ; 
SET @@autocommit = 0;

SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 1;
SET  @@FOREIGN_KEY_CHECKS = 0;

-- TABLA CUSTOMERS:
use db_spa;
select * from customers;

-- Se intenta hacer la eliminacion de registros con id <= 3 pero aparece el siguiente error, debido que la tabla customers es
-- referenciada como clave foranea en otra tabla llamada RESERVATIONS.
-- Error Code: 1451. Cannot delete or update a parent row: a foreign key constraint fails (`db_spa`.`reservations`, 
-- CONSTRAINT `FK_reservations_customers` FOREIGN KEY (`customers_id`) REFERENCES `customers` (`id`))
-- START TRANSACTION;
-- DELETE FROM CUSTOMERS WHERE ID <= 3;
-- ROLLBACK;
-- COMMIT;
-- select * from customers;

-- 1. En la tabla CUSTOMERS Iniciar una transacción y hacer la inserción de algunos registros
START TRANSACTION;
INSERT INTO CUSTOMERS VALUES(13, 'Alex', 'Martínez', 'M', 3335557777, 'alex.martinez@email.com', '2000-01-01'),
							(14, 'Sofia', 'González', 'F', 4446668888, 'sofia.gonzalez@email.com', '1998-05-15'),
							(15, 'Diego', 'Ramirez', 'M', 5557779999, 'diego.ramirez@email.com', '1980-12-25');
-- ROLLBACK;
-- COMMIT;
select * from customers;

-- 2. En la tabla PRODUCTS inserta ocho nuevos registros iniciando una transaccion, agrega un savepoint posterior a la inserción
-- del registro #4 y otro posterior al registro #8, agrega una línea comentada para eliminiar el primer savepoint.alter

select * from products;
START TRANSACTION;
-- Insertar 8 registros a la tabla PRODUCTS.
INSERT INTO products VALUES(29, 'Aceite de Masaje Relajante', 'SpaHarmony', 28.00, 20, 'Aceite de masaje formulado con ingredientes 
							naturales para proporcionar una experiencia relajante y revitalizante durante los tratamientos en 
                            el spa.', '2023-09-15', '2024-09-15');
INSERT INTO products VALUES(30, 'Mascarilla Facial Hidratante de Aloe Vera', 'GlowSpa', 15.99, 25, 'Mascarilla facial con extracto 
                            de aloe vera para hidratar y refrescar la piel. Ideal para tratamientos faciales en el spa.', 
                            '2023-10-02', '2024-10-02');
INSERT INTO products VALUES(31, 'Sales de Baño de Lavanda', 'ZenEssence', 12.50, 30, 'Sales de baño enriquecidas con aceite esencial 
                            de lavanda para promover la relajación muscular y mental durante el baño en el spa.', 
                            '2023-11-20', '2024-11-20');
INSERT INTO products VALUES(32, 'Vela Aromática de Jazmín', 'SerenityScents', 18.99, 15, 'Vela perfumada con aroma de jazmín para crear 
                            un ambiente tranquilo y sereno en las salas de tratamiento del spa.', '2023-08-08', '2024-08-08');
SAVEPOINT SPLOTE1;
INSERT INTO products VALUES(33, 'Exfoliante Corporal de Sal Marina', 'OceanBliss', 25.75, 12, 'Exfoliante corporal hecho con sal marina
                            y aceites esenciales para eliminar células muertas y dejar la piel suave y renovada después de un 
                            tratamiento en el spa.', '2023-07-12', '2024-07-12');
INSERT INTO products VALUES(34, 'Infusor de Agua con Frutas', 'HydrateWell', 32.49, 18, 'Infusor de agua con compartimento para frutas, 
                           perfecto para ofrecer agua infusionada con sabores refrescantes a los clientes del spa.', 
                           '2023-12-05', '2025-12-05');
INSERT INTO products VALUES(35, 'Toalla de Bambú Ultra Suave', 'BambooComfort', 22.95, 20, 'Toalla hecha de fibras de bambú para 
                           proporcionar suavidad y absorción óptima durante los tratamientos de spa. Agradable para la piel y 
                           respetuosa con el medio ambiente.', '2023-06-25', '2024-06-25');
INSERT INTO products VALUES(36, 'Set de Velas Flotantes de Aromaterapia', 'FloatingZen', 45.00, 10, 'Conjunto de velas flotantes 
                           perfumadas con aceites esenciales calmantes para crear una experiencia visual y aromática única en las 
                           áreas de relajación del spa.', '2023-04-15', '2024-04-15');
SAVEPOINT SPLOTE2;

-- SELECT * FROM PRODUCTS;
-- ROLLBACK;
-- COMMIT;

-- RELEASE SAVEPOINT SPLOTE1;











