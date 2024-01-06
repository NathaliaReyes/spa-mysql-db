-- Estudiante: Silvia Reyes --------

-- 1. creación base de datos y tablas correspondientes --
DROP SCHEMA IF EXISTS DB_SPA;
CREATE SCHEMA IF NOT EXISTS  DB_SPA; 
USE DB_SPA;


-- select * from products;
CREATE TABLE IF NOT EXISTS products(
	id int AUTO_INCREMENT COMMENT 'Clave primaria',
    nombre varchar(100) NOT NULL COMMENT 'nombre del producto',
    brand varchar(100) NOT NULL COMMENT 'marca del producto',
    amount double NOT NULL COMMENT 'valor del producto',
    quantity_in_stock int NOT NULL COMMENT 'cantidad en stock del producto',
    descripcion varchar(300) NOT NULL COMMENT 'descripción del producto',
    registration_date date NOT NULL COMMENT 'fecha de registro del producto',
    expiration_date date NOT NULL COMMENT 'fecha de vencimiento del producto',
    PRIMARY KEY(id)
);

-- Sentencias auxiliares para revisar la creación de la tabla PRODUCTS
-- Sólo para corroborar que fue creada con los tipos de datos acertados, ya que por ahora está vacía.
select * from PRODUCTS;

-- select * from customers;
CREATE TABLE IF NOT EXISTS customers(
	id int AUTO_INCREMENT COMMENT 'Clave primaria',
    first_name varchar(50) NOT NULL COMMENT 'nombre cliente',
    last_name varchar(50) NOT NULL COMMENT 'apellido cliente',
    gender char(1) NOT NULL COMMENT 'género del cliente',
    phone_number varchar(15) NOT NULL,
    email varchar(100) NOT NULL COMMENT 'correo electrónico del cliente',
    birth_date date NOT NULL COMMENT 'fecha de nacimiento del cliente',
    PRIMARY KEY(id)
);

-- Sentencias auxiliares para revisar la creación de la tabla CUSTOMERS
-- Sólo para corroborar que fue creada con los tipos de datos acertados, ya que por ahora está vacía.
select * from CUSTOMERS;

-- select * from employees;
CREATE TABLE IF NOT EXISTS employees(
	id int AUTO_INCREMENT COMMENT 'Clave primaria',
    first_name varchar(50) NOT NULL COMMENT 'nombre empleado',
    last_name varchar(50) NOT NULL COMMENT 'apellido empleado',
    rol varchar(20) NOT NULL COMMENT 'cargo del empleado',
    phone_number varchar(15) NOT NULL,
    email varchar(100) NOT NULL COMMENT 'correo electrónico del empleado',
    PRIMARY KEY(id)
);

-- Sentencias auxiliares para revisar la creación de la tabla EMPLOYEES
-- Sólo para corroborar que fue creada con los tipos de datos acertados, ya que por ahora está vacía.
select * from EMPLOYEES;

-- select * from services;
CREATE TABLE IF NOT EXISTS services(
	id int AUTO_INCREMENT COMMENT 'Clave primaria',
    nombre varchar(100) NOT NULL COMMENT 'nombre del servicio',
    descripcion varchar(300) NOT NULL COMMENT 'descripción del servicio',
    price double NOT NULL COMMENT 'valor del servicio',
    PRIMARY KEY(id)
);

-- Sentencias auxiliares para revisar la creación de la tabla SERVICES
-- Sólo para corroborar que fue creada con los tipos de datos acertados, ya que por ahora está vacía.
select * from SERVICES;

-- select * from reservations;
CREATE TABLE IF NOT EXISTS reservations(
	id int AUTO_INCREMENT COMMENT 'Clave primaria',
    reservation_number int NOT NULL COMMENT 'número de rastreo de la reserva',
    fecha date NOT NULL,
    amount double NOT NULL COMMENT 'valor total de la reserva',
    PRIMARY KEY(id),
    customers_id int, CONSTRAINT FK_reservations_customers 
    FOREIGN KEY (customers_id) REFERENCES customers(id)
);

-- Sentencias auxiliares para revisar la creación de la tabla RESERVATIONS
-- Sólo para corroborar que fue creada con los tipos de datos acertados, ya que por ahora está vacía.
select * from RESERVATIONS;

-- select * from services_reserved;
CREATE TABLE IF NOT EXISTS services_reserved(
	id int AUTO_INCREMENT COMMENT 'Clave primaria',
    PRIMARY KEY(id),
    services_id int, CONSTRAINT FK_services_reserved_services 
    FOREIGN KEY (services_id) REFERENCES services(id),
    reservations_id int, CONSTRAINT FK_services_reserved_reservations 
    FOREIGN KEY (reservations_id) REFERENCES reservations(id),
    employees_id int, CONSTRAINT FK_services_required_employees 
    FOREIGN KEY (employees_id) REFERENCES employees(id)
);

-- Sentencias auxiliares para revisar la creación de la tabla SERVICES_RESERVED
-- Sólo para corroborar que fue creada con los tipos de datos acertados, ya que por ahora está vacía.
select * from SERVICES_RESERVED;

-- select * from sales;
CREATE TABLE IF NOT EXISTS sales(
	id int AUTO_INCREMENT COMMENT 'Clave primaria',
    reservation_amount double NOT NULL COMMENT 'valor total de la reserva',
    product_amount double NOT NULL COMMENT 'Valor total de productos adquiridos por el cliente',
    total_amount double NOT NULL COMMENT 'valor total de la venta',
    fecha date NOT NULL COMMENT 'Fecha de la venta',
    method enum('card', 'cash','gift_card') NOT NULL COMMENT 'método de pago',
    PRIMARY KEY(id),
    customers_id int, CONSTRAINT FK_sales_customers 
    FOREIGN KEY (customers_id) REFERENCES customers(id)
);

-- Sentencias auxiliares para revisar la creación de la tabla SALES
-- Sólo para corroborar que fue creada con los tipos de datos acertados, ya que por ahora está vacía.
select * from SALES;

-- select * from products_sold;
CREATE TABLE IF NOT EXISTS products_sold(
	id int AUTO_INCREMENT COMMENT 'Clave primaria',
    quantity int NOT NULL COMMENT 'cantidad de productos vendidos',
    PRIMARY KEY(id),
    products_id int, CONSTRAINT FK_products_products_sold 
    FOREIGN KEY (products_id) REFERENCES products(id),
    sales_id int, CONSTRAINT FK_sales_products_sold 
    FOREIGN KEY (sales_id) REFERENCES sales(id)
);

-- Sentencias auxiliares para revisar la creación de la tabla PRODUCTS_SOLD
-- Sólo para corroborar que fue creada con los tipos de datos acertados, ya que por ahora está vacía.
select * from PRODUCTS_SOLD;

