-- Estudiante: Silvia Reyes --------

-- -------------------------------------------------------------------------------------------
-- 2. INSERCIÓN DE DATOS
-- -------------------------------------------------------------------------------------------

-- Se realiza la inserción de datos a la tabla Products.
INSERT INTO products (nombre, brand, amount, quantity_in_stock, descripcion, registration_date, expiration_date)
VALUES
('Set de Aceites Esenciales para Aromaterapia', 'Aroma', 22.00, 23, 'Eleva tu bienestar en casa con nuestro 
set de aceites esenciales. Incluye una mezcla cuidadosa de aceites como lavanda, eucalipto y menta para 
crear un ambiente relajante y revitalizante.', '2023-10-16', '2025-10-16'),
('Kit de Cuidado Facial en Casa', 'FacialCare', 31.20, 12, 'Obtén la experiencia del spa en la comodidad 
de tu hogar con nuestro kit facial. Contiene una mascarilla purificante, un exfoliante suave y una 
crema hidratante para rejuvenecer tu piel.', '2023-10-13', '2025-10-13'),
('Vela Aromática de Spa en Casa', 'Candles', 8.99, 233, 'Transforma tu espacio personal en un oasis de 
tranquilidad con nuestra vela aromática de spa. La mezcla única de aromas relajantes crea un ambiente 
sereno para aliviar el estrés diario.', '2023-10-11', '2025-10-11'),
('Set de Baño de Sales Minerales', 'Nature', 45.10, 80, 'Disfruta de un baño relajante con nuestro 
set de sales minerales. Infundidas con ingredientes naturales, estas sales proporcionan un alivio 
instantáneo para los músculos cansados y promueven la relajación total.', '2023-10-01', '2025-10-01'),
('Caja de Té de Bienestar', 'TeaSpa', 21.00, 90, 'Experimenta el lujo de la relajación con nuestra caja 
de té de bienestar. Incluye una selección de infusiones de hierbas y tés que calman los sentidos y 
promueven la paz interior.', '2023-10-10', '2025-10-10'),
('Aceite de Masaje Relajante', 'ZenEssentials', 18.50, 25, 'Disfruta de un masaje relajante con nuestro 
aceite especial. Una mezcla única de aceites esenciales para aliviar el estrés y la tensión muscular.', 
'2023-10-02', '2024-10-02'),
('Exfoliante Corporal de Sal Marina', 'SeaSaltGlow', 30.99, 15, 'Renueva tu piel con nuestro exfoliante 
corporal de sal marina. Deja la piel suave, revitalizada y con un brillo saludable.', 
'2023-08-20', '2024-08-20'),
('Kit de Baño de Lujo con Sales y Bombas Efervescentes', 'LuxuryBath', 45.75, 18, 
'Transforma tu baño en un spa con nuestro kit de baño de lujo. Incluye sales y bombas efervescentes 
para una experiencia relajante.', '2023-11-10', '2024-11-10'),
('Mascarilla Facial de Arcilla Purificante', 'ClayRadiance', 25.99, 30, 'Purifica tu piel con nuestra 
mascarilla facial de arcilla. Elimina impurezas y deja la piel fresca y revitalizada.', 
'2023-09-05', '2024-09-05'),
('Infusor de Té de Vidrio con Hierbas Relajantes', 'HerbalInfusion', 28.00, 20, 'Disfruta de una taza 
de tranquilidad con nuestro infusor de té de vidrio. Incluye hierbas relajantes para un momento de 
calma.', '2023-11-25', '2024-11-25'),
('Aceite Esencial de Lavanda para Difusores', 'LavenderBliss', 12.50, 40, 'Aromatiza tu espacio con 
nuestro aceite esencial de lavanda. Ideal para difusores, promoviendo la relajación y un sueño 
reparador.', '2023-10-18', '2025-10-18'),
('Crema Hidratante de Rosa Mosqueta', 'RoseElegance', 34.50, 15, 'Hidrata tu piel con nuestra crema 
de rosa mosqueta. Nutre y revitaliza, dejando la piel suave y radiante.', '2023-07-30', '2024-07-30'),
('Set de Toallas de Bambú Ultra Suaves', 'BambooComfort', 40.75, 25, 'Envuélvete en la suavidad con 
nuestro set de toallas de bambú. Absorbentes y lujosas para una experiencia de spa en casa.', 
'2023-11-12', '2024-11-12'),
('Vela de Masaje con Aceite de Coco', 'CoconutMelt', 28.99, 12, 'Combina relajación y cuidado de la 
piel con nuestra vela de masaje. El aceite de coco hidrata y deja la piel irresistiblemente suave.', 
'2023-10-30', '2024-10-30');

-- select * from PRODUCTS;
-- -------------------------------------------------------------------------------------------

-- Se realiza la inserción de datos a la tabla CUSTOMERS.
INSERT INTO customers (first_name, last_name, gender, phone_number, email, birth_date)
VALUES
('Carolina', 'Ciachoque', 'F', 3226789009, 'caro@gmail.com', '1992-11-14'),
('Juan', 'Ochoa', 'M', 3112225678, 'juan@gmail.com', '1995-01-30'),
('Sammy', 'Suarez', 'F', 3235674545, 'sammy@gmail.com', '2020-07-06'),
('Gastón', 'Hernandez', 'M', 3008900987, 'gaston@gmail.com', '1994-07-18'),
('Robert', 'Fuentes', 'M', 3012345678, 'robert@gmail.com', '1991-06-21'),
('Silvia', 'Villamizar', 'F', 3214325678, 'silvia@gmail.com', '1996-08-23'),
('Juan', 'Pérez', 'M', 9876543210, 'juan@gmail.com', '1990-05-15'),
('Ana', 'García', 'F', 5556789012, 'ana@gmail.com', '1985-12-10'),
('Carlos', 'Martínez', 'M', 1234567890, 'carlos@gmail.com', '2000-02-28'),
('Laura', 'López', 'F', 7778889999, 'laura@gmail.com', '1998-11-07'),
('Luis', 'Rodríguez', 'M', 5553334444, 'luis@gmail.com', '1992-04-17'),
('María', 'Fernández', 'F', 8889990001, 'maria@gmail.com', '1987-09-30');

-- select * from CUSTOMERS;
-- -------------------------------------------------------------------------------------------

INSERT INTO employees (first_name, last_name, rol, phone_number, email) 
VALUES 
('Camilo', 'Cienfuegos', 'Manicurista', '3234548989', 'camilo@gmail.com'),
('Sandra', 'Fuentes', 'Pedicurista', '3112345678', 'sandra@gmail.com'),
('Zully', 'Serrano', 'Masajista', '3226789000', 'zully@gmail.com'),
('Daniel', 'Carrasco', 'Escritorio', '3109087890', 'daniel@gmail.com'),
('Paulina', 'Silva', 'Masajista', '3188789009', 'pau@gmail.com'),
('Jhonatan', 'Reyes', 'Limpieza facial', '7206788002', 'jhoy@gmail.com'),
('Nancy', 'Pulido', 'Masajista', '8409876543', 'nancypul@gmail.com'),
('Melissa', 'Suárez', 'Escritorio', '7199008754', 'melisa@gmail.com'),
('Enrique', 'Acevedo', 'Jefe General', '6507861122', 'enrique@gmail.com'),
('Zulma', 'Villareal', 'Pedicurista', '8009872345', 'zulma@gmail.com'),
('Benancio', 'Buendía', 'Pedicurista', '3188188790', 'buendia@gmail.com'),
('Cristina', 'Rodríguez', 'Pedicurista', '3153408765', 'cristinar@gmail.com');

-- select * from EMPLOYEES;
-- -------------------------------------------------------------------------------------------

INSERT INTO services (nombre, descripcion, price)
VALUES
('Masaje de Aromaterapia Profunda', 'Sumérgete en la relajación con nuestro masaje 
de aromaterapia profunda. Se utiliza una combinación de aceites esenciales cuidadosamente 
seleccionados para aliviar la tensión muscular y promover un estado de serenidad total.', 280.00),
('Tratamiento Facial Rejuvenecedor con Mascarilla de Oro', 'Experimenta el lujo con nuestro 
tratamiento facial rejuvenecedor. Este servicio exclusivo utiliza una mascarilla de oro que 
ayuda a revitalizar la piel, reducir las líneas finas y dejar un brillo radiante.', 340.00),
('Experiencia de Baño de Hidroterapia con Sales Minerales', 'Sumérgete en un mundo de serenidad 
con nuestra experiencia de baño de hidroterapia. Las sales minerales en el agua nutren la piel, 
alivian el estrés y proporcionan una experiencia relajante y revitalizante.', 200.00),
('Manicura y Pedicura de Spa con Tratamiento de Parafina', 'Embellece tus manos y pies con 
nuestra manicura y pedicura de spa. Incluye un tratamiento de parafina para hidratar y suavizar 
la piel, dejándote con uñas impecables y extremidades renovadas.', 130.00),
('Yoga y Meditación Guiada en Entorno Tranquilo', 'Encuentra equilibrio y paz interior con 
nuestra sesión de yoga y meditación guiada. Realizada en un entorno tranquilo y armonioso, 
esta experiencia te ayuda a desconectar del estrés diario y encontrar serenidad.', 310.00),
('Tratamiento Facial Rejuvenecedor', 'Revitaliza tu piel con nuestro tratamiento facial rejuvenecedor.
 Utilizamos técnicas avanzadas y productos de alta calidad para dejar tu piel radiante y fresca.', 
 220.50),
('Experiencia de Baño de Vapor con Hierbas', 'Relájate y desintoxica con nuestra experiencia de baño 
de vapor. Hierbas naturales se combinan para crear un ambiente purificador que revitaliza cuerpo y 
mente.', 150.99),
('Pedicura Deluxe con Masaje de Piernas', 'Mima tus pies con nuestra pedicura deluxe. Incluye un 
relajante masaje de piernas para aliviar la tensión y dejar tus pies suaves y renovados.', 80.75),
('Ritual de Envoltura Corporal de Algas', 'Embárcate en un viaje de rejuvenecimiento con nuestro 
ritual de envoltura corporal de algas. Nutre y tonifica la piel para una sensación fresca y 
revitalizante.', 190.00),
('Clase de Yoga en la Naturaleza', 'Encuentra equilibrio y serenidad con nuestra clase de yoga 
en la naturaleza. Disfruta de la tranquilidad al aire libre mientras practicas posturas 
rejuvenecedoras.', 30.99),
('Masaje de Piedras Calientes', 'Sumérgete en una experiencia única con nuestro masaje de piedras 
calientes. Las piedras calientes se utilizan para aliviar la tensión muscular y promover 
la relajación profunda.', 250.50),
('Tratamiento Capilar de Lujo con Aceites Esenciales', 'Transforma tu cabello con nuestro tratamiento 
capilar de lujo. Utilizamos aceites esenciales para revitalizar y nutrir, dejando tu cabello sedoso 
y brillante.', 180.00),
('Sesión de Meditación Guiada', 'Descubre la paz interior con nuestra sesión de meditación guiada. 
Un viaje tranquilo para calmar la mente y encontrar armonía en tu vida cotidiana.', 40.75),
('Manicura con Esmalte de Gel y Masaje de Manos', 'Embellece tus manos con nuestra manicura de esmalte 
de gel. Disfruta de un relajante masaje mientras tus uñas lucen impecables.', 60.25),
('Masaje Craneal de Alivio de Tensión', 'Libera la tensión con nuestro masaje craneal especializado. 
Se centra en la cabeza y el cuello para aliviar el estrés y promover una sensación de alivio 
inmediato.', 120.99);

-- select * from SERVICES;
-- -------------------------------------------------------------------------------------------

INSERT INTO reservations (reservation_number, fecha, amount, customers_id) 
VALUES 
(23456798,'2023-11-01', 360.00, 2),
(23456790,'2023-12-20', 1098.00, 1),
(23456754,'2023-12-05', 500.00, 4),
(32456700,'2023-12-13', 120.00, 5),
(21324567,'2024-01-22', 900.00, 6),
(23267876,'2023-11-06', 340.00, 8),
(56432189, '2023-11-07', 120.50, 5),
(87654321, '2023-11-08', 75.99, 10),
(98765432, '2023-11-09', 220.00, 6),
(12345678, '2023-11-10', 45.75, 12),
(87654321, '2023-11-11', 150.00, 4),
(34567890, '2023-11-12', 90.99, 11),
(56789012, '2023-11-13', 28.50, 12),
(78901234, '2023-11-14', 200.75, 9),
(23456789, '2023-11-15', 60.00, 11),
(45678901, '2023-11-16', 135.25, 5);

-- select * from RESERVATIONS;
-- -------------------------------------------------------------------------------------------

INSERT INTO services_reserved (services_id, reservations_id, employees_id)
VALUES
(1,3,1),
(3,4,2),
(4,2,4),
(8,16,6),
(15,15,4),
(11,12,3),
(9,8,7),
(5,6,7),
(13,14,9),
(12,2,3),
(10,10,1),
(10,4,4),
(8,5,8);

-- select * from SERVICES_RESERVED;
-- -------------------------------------------------------------------------------------------

INSERT INTO sales (reservation_amount, product_amount, total_amount, fecha, method, customers_id)
VALUES
(1098.00, 22.00, 1120.00, '2023-10-17', 'cash', '1'),
(360.00, 31.20, 391.20, '2023-10-15', 'card', '3'),
(500.00, 8.99, 508.99, '2023-10-01', 'cash', '4'),
(120.00, 45.10, 165.10, '2023-10-02', 'gift_card', '6'),
(900.00, 21.00, 921.00, '2023-10-18', 'card', '2'),
(340.00, 18.50, 358.50, '2023-10-19', 'cash', '12'),
(120.50, 30.99, 151.49, '2023-10-20', 'cash', '10'),
(75.99, 45.75, 121.74, '2023-10-21', 'gift_card', '11'),
(220.00, 25.99, 245.99, '2023-10-22', 'card', '9'),
(45.75, 28.00, 73.75, '2023-10-23', 'card', '5'),
(150.00, 12.5, 162.50, '2023-10-24', 'card', '8'),
(90.99, 34.50, 125.49, '2023-10-25', 'cash', '9'),
(28.50, 40.75, 69.25, '2023-10-26', 'card', '7'),
(200.75, 28.99, 229.74, '2023-10-27', 'card', '11'),
(60.00, 28.99, 88.99, '2023-11-13', 'cash', '1'),
(135.25, 12.50, 147.75, '2023-11-13', 'cash', '10'),
(450.00, 28.00, 478.00, '2023-11-13', 'gift_card', '1'),
(710.00, 12.50, 722.50, '2023-11-13', 'cash', '1'),
(90.00, 28.00, 118.00, '2023-11-13', 'gift_card', '10'),
(543.00, 40.75, 583.75, '2023-11-13', 'cash', '10'),
(611.00, 34.50, 645.50, '2023-11-13', 'cash', '9'),
(122.00, 40.75, 162.75, '2023-11-13', 'card', '11'),
(1030.00, 34.50, 1064.50, '2023-11-13', 'cash', '9');

-- select * from SALES;
-- -------------------------------------------------------------------------------------------

INSERT INTO products_sold (quantity, products_id, sales_id)
VALUES
(2,1,2),
(5,5,1),
(1,4,3),
(1,3,4),
(4,7,8),
(8,2,5),
(2,11,13), 
(3,8,10),
(4,11,2),
(1,12,14), 
(1,14,11),
(3,12,6),
(2,11,12);

-- select * from PRODUCTS_SOLD;
-- -------------------------------------------------------------------------------------------




