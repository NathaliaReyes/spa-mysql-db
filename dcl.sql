-- -----------Alumna: Silvia Reyes ---------------------------------

-------------------------------------------------------------------
-- ----------- DCL -------------------------------------------
-------------------------------------------------------------------

-- CREACIÓN DE DOS USUARIOS NUEVOS.
create user if not exists 'usuario_uno'@'localhost' identified by 'password123';
create user if not exists 'usuario_dos'@'localhost' identified by 'password321';

-- se realizan las dos debidas conexiones en la interfaz de workbench.

-- usuario_uno tendrá permisos de lectura sobre todas las tablas de db_spa (8 tablas en total);
grant select on db_spa.customers to 'usuario_uno'@'localhost';
grant select on db_spa.employees to 'usuario_uno'@'localhost';
grant select on db_spa.products to 'usuario_uno'@'localhost'; 
grant select on db_spa.products_sold to 'usuario_uno'@'localhost';
grant select on db_spa.reservations to 'usuario_uno'@'localhost';
grant select on db_spa.sales to 'usuario_uno'@'localhost';
grant select on db_spa.services to 'usuario_uno'@'localhost';
grant select on db_spa.services_reserved to 'usuario_uno'@'localhost';

-- usuario_dos tendrá permisos de lectura, inserción y modificación de datos
-- (es decir a todos los objetos de la base de datos: db_spa, tables, views, stored procedures y functions)
grant select, insert, update on db_spa.* to 'usuario_dos'@'localhost';

-- ACLARACIÓN: ninguno de estos dos usuarios tiene permisos de eliminar.



