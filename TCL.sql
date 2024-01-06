-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: db_spa
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Carolina','Ciachoque','F','3226789009','carolina123ciac@gmail.com','1992-11-14'),(2,'Juan','Ochoa','M','3112225678','juan@gmail.com','1995-01-30'),(3,'Sammy','Suarez','F','3235674545','sammy@gmail.com','2020-07-06'),(4,'Gastón','Hernandez','M','3008900987','gaston@gmail.com','1994-07-18'),(5,'Robert','Fuentes','M','3012345678','robert@gmail.com','1991-06-21'),(6,'Silvia','Villamizar','F','3214325678','silvia@gmail.com','1996-08-23'),(7,'Juan','Pérez','M','9876543210','juan@gmail.com','1990-05-15'),(8,'Ana','García','F','5556789012','ana@gmail.com','1985-12-10'),(9,'Carlos','Martínez','M','1234567890','carlos@gmail.com','2000-02-28'),(10,'Laura','López','F','7778889999','laura@gmail.com','1998-11-07'),(11,'Luis','Rodríguez','M','5553334444','luis@gmail.com','1992-04-17'),(12,'María','Fernández','F','8889990001','maria@gmail.com','1987-09-30');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Camilo','Cienfuegos','Manicurista','3234548989','camilo@gmail.com'),(2,'Sandra','Fuentes','Pedicurista','3112345678','sandra@gmail.com'),(3,'Zully','Serrano','Masajista','3226789000','zully@gmail.com'),(4,'Daniel','Carrasco','Escritorio','3109087890','daniel@gmail.com'),(5,'Paulina','Silva','Masajista','3188789009','pau@gmail.com'),(6,'Jhonatan','Reyes','Limpieza facial','7206788002','jhoy@gmail.com'),(7,'Nancy','Pulido','Masajista','8409876543','nancypul@gmail.com'),(8,'Melissa','Suárez','Escritorio','7199008754','melisa@gmail.com'),(9,'Enrique','Acevedo','Jefe General','6507861122','enrique@gmail.com'),(10,'Zulma','Villareal','Pedicurista','8009872345','zulma@gmail.com'),(11,'Benancio','Buendía','Pedicurista','3188188790','buendia@gmail.com'),(12,'Cristina','Rodríguez','Pedicurista','3153408765','cristinar@gmail.com');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Set de Aceites Esenciales para Masaje Facial','Aroma',22,23,'Eleva tu bienestar en casa con nuestro \nset de aceites esenciales. Incluye una mezcla cuidadosa de aceites como lavanda, eucalipto y menta para \ncrear un ambiente relajante y revitalizante.','2023-10-16','2025-10-16'),(2,'Kit de Cuidado Facial en Casa','FacialCare',31.2,12,'Obtén la experiencia del spa en la comodidad \nde tu hogar con nuestro kit facial. Contiene una mascarilla purificante, un exfoliante suave y una \ncrema hidratante para rejuvenecer tu piel.','2023-10-13','2025-10-13'),(3,'Vela Aromática de Spa en Casa','Candles',8.99,233,'Transforma tu espacio personal en un oasis de \ntranquilidad con nuestra vela aromática de spa. La mezcla única de aromas relajantes crea un ambiente \nsereno para aliviar el estrés diario.','2023-10-11','2025-10-11'),(4,'Set de Baño de Sales Minerales','Nature',45.1,80,'Disfruta de un baño relajante con nuestro \nset de sales minerales. Infundidas con ingredientes naturales, estas sales proporcionan un alivio \ninstantáneo para los músculos cansados y promueven la relajación total.','2023-10-01','2025-10-01'),(5,'Caja de Té de Bienestar','TeaSpa',21,90,'Experimenta el lujo de la relajación con nuestra caja \nde té de bienestar. Incluye una selección de infusiones de hierbas y tés que calman los sentidos y \npromueven la paz interior.','2023-10-10','2025-10-10'),(6,'Aceite de Masaje Relajante','ZenEssentials',18.5,25,'Disfruta de un masaje relajante con nuestro \naceite especial. Una mezcla única de aceites esenciales para aliviar el estrés y la tensión muscular.','2023-10-02','2024-10-02'),(7,'Exfoliante Corporal de Sal Marina','SeaSaltGlow',30.99,15,'Renueva tu piel con nuestro exfoliante \ncorporal de sal marina. Deja la piel suave, revitalizada y con un brillo saludable.','2023-08-20','2024-08-20'),(8,'Kit de Baño de Lujo con Sales y Bombas Efervescentes','LuxuryBath',45.75,18,'Transforma tu baño en un spa con nuestro kit de baño de lujo. Incluye sales y bombas efervescentes \npara una experiencia relajante.','2023-11-10','2024-11-10'),(9,'Mascarilla Facial de Arcilla Purificante','ClayRadiance',25.99,30,'Purifica tu piel con nuestra \nmascarilla facial de arcilla. Elimina impurezas y deja la piel fresca y revitalizada.','2023-09-05','2024-09-05'),(10,'Infusor de Té de Vidrio con Hierbas Relajantes','HerbalInfusion',28,20,'Disfruta de una taza \nde tranquilidad con nuestro infusor de té de vidrio. Incluye hierbas relajantes para un momento de \ncalma.','2023-11-25','2024-11-25'),(11,'Aceite Esencial de Lavanda para Difusores','LavenderBliss',12.5,40,'Aromatiza tu espacio con \nnuestro aceite esencial de lavanda. Ideal para difusores, promoviendo la relajación y un sueño \nreparador.','2023-10-18','2025-10-18'),(12,'Crema Hidratante de Rosa Mosqueta','RoseElegance',34.5,15,'Hidrata tu piel con nuestra crema \nde rosa mosqueta. Nutre y revitaliza, dejando la piel suave y radiante.','2023-07-30','2024-07-30'),(13,'Set de Toallas de Bambú Ultra Suaves','BambooComfort',40.75,25,'Envuélvete en la suavidad con \nnuestro set de toallas de bambú. Absorbentes y lujosas para una experiencia de spa en casa.','2023-11-12','2024-11-12'),(14,'Vela de Masaje con Aceite de Coco','CoconutMelt',28.99,12,'Combina relajación y cuidado de la \npiel con nuestra vela de masaje. El aceite de coco hidrata y deja la piel irresistiblemente suave.','2023-10-30','2024-10-30'),(15,'Set de Aceites Esenciales para Aromaterapia','Aroma',22,23,'Eleva tu bienestar en casa con nuestro \nset de aceites esenciales. Incluye una mezcla cuidadosa de aceites como lavanda, eucalipto y menta para \ncrear un ambiente relajante y revitalizante.','2023-10-16','2025-10-16'),(16,'Kit de Cuidado Facial en Casa','FacialCare',31.2,12,'Obtén la experiencia del spa en la comodidad \nde tu hogar con nuestro kit facial. Contiene una mascarilla purificante, un exfoliante suave y una \ncrema hidratante para rejuvenecer tu piel.','2023-10-13','2025-10-13'),(17,'Vela Aromática de Spa en Casa','Candles',8.99,233,'Transforma tu espacio personal en un oasis de \ntranquilidad con nuestra vela aromática de spa. La mezcla única de aromas relajantes crea un ambiente \nsereno para aliviar el estrés diario.','2023-10-11','2025-10-11'),(18,'Set de Baño de Sales Minerales','Nature',45.1,80,'Disfruta de un baño relajante con nuestro \nset de sales minerales. Infundidas con ingredientes naturales, estas sales proporcionan un alivio \ninstantáneo para los músculos cansados y promueven la relajación total.','2023-10-01','2025-10-01'),(19,'Caja de Té de Bienestar','TeaSpa',21,90,'Experimenta el lujo de la relajación con nuestra caja \nde té de bienestar. Incluye una selección de infusiones de hierbas y tés que calman los sentidos y \npromueven la paz interior.','2023-10-10','2025-10-10'),(20,'Aceite de Masaje Relajante','ZenEssentials',18.5,25,'Disfruta de un masaje relajante con nuestro \naceite especial. Una mezcla única de aceites esenciales para aliviar el estrés y la tensión muscular.','2023-10-02','2024-10-02'),(21,'Exfoliante Corporal de Sal Marina','SeaSaltGlow',30.99,15,'Renueva tu piel con nuestro exfoliante \ncorporal de sal marina. Deja la piel suave, revitalizada y con un brillo saludable.','2023-08-20','2024-08-20'),(22,'Kit de Baño de Lujo con Sales y Bombas Efervescentes','LuxuryBath',45.75,18,'Transforma tu baño en un spa con nuestro kit de baño de lujo. Incluye sales y bombas efervescentes \npara una experiencia relajante.','2023-11-10','2024-11-10'),(23,'Mascarilla Facial de Arcilla Purificante','ClayRadiance',25.99,30,'Purifica tu piel con nuestra \nmascarilla facial de arcilla. Elimina impurezas y deja la piel fresca y revitalizada.','2023-09-05','2024-09-05'),(24,'Infusor de Té de Vidrio con Hierbas Relajantes','HerbalInfusion',28,20,'Disfruta de una taza \nde tranquilidad con nuestro infusor de té de vidrio. Incluye hierbas relajantes para un momento de \ncalma.','2023-11-25','2024-11-25'),(25,'Aceite Esencial de Lavanda para Difusores','LavenderBliss',12.5,40,'Aromatiza tu espacio con \nnuestro aceite esencial de lavanda. Ideal para difusores, promoviendo la relajación y un sueño \nreparador.','2023-10-18','2025-10-18'),(26,'Crema Hidratante de Rosa Mosqueta','RoseElegance',34.5,15,'Hidrata tu piel con nuestra crema \nde rosa mosqueta. Nutre y revitaliza, dejando la piel suave y radiante.','2023-07-30','2024-07-30'),(27,'Set de Toallas de Bambú Ultra Suaves','BambooComfort',40.75,25,'Envuélvete en la suavidad con \nnuestro set de toallas de bambú. Absorbentes y lujosas para una experiencia de spa en casa.','2023-11-12','2024-11-12'),(28,'Vela de Masaje con Aceite de Coco','CoconutMelt',28.99,12,'Combina relajación y cuidado de la \npiel con nuestra vela de masaje. El aceite de coco hidrata y deja la piel irresistiblemente suave.','2023-10-30','2024-10-30');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `products_sold`
--

LOCK TABLES `products_sold` WRITE;
/*!40000 ALTER TABLE `products_sold` DISABLE KEYS */;
INSERT INTO `products_sold` VALUES (1,2,1,2),(2,5,5,1),(3,1,4,3),(4,1,3,4),(5,4,7,8),(6,8,2,5),(7,2,11,13),(8,3,8,10),(9,4,11,2),(10,1,12,14),(11,1,14,11),(12,3,12,6),(13,2,11,12);
/*!40000 ALTER TABLE `products_sold` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
INSERT INTO `reservations` VALUES (1,23456798,'2023-11-01',360,2),(2,23456790,'2023-12-20',1098,1),(3,23456754,'2023-12-05',500,4),(4,32456700,'2023-12-13',120,5),(5,21324567,'2024-01-22',900,6),(6,23267876,'2023-11-06',340,8),(7,56432189,'2023-11-07',120.5,5),(8,87654321,'2023-11-08',75.99,10),(9,98765432,'2023-11-09',220,6),(10,12345678,'2023-11-10',45.75,12),(11,87654321,'2023-11-11',150,4),(12,34567890,'2023-11-12',90.99,11),(13,56789012,'2023-11-13',28.5,12),(14,78901234,'2023-11-14',200.75,9),(15,23456789,'2023-11-15',60,11),(16,45678901,'2023-11-16',135.25,5);
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,1098,22,1120,'2023-10-17','cash',1),(2,360,31.2,391.2,'2023-10-15','card',3),(3,500,8.99,508.99,'2023-10-01','cash',4),(4,120,45.1,165.1,'2023-10-02','gift_card',6),(5,900,21,921,'2023-10-18','card',2),(6,340,18.5,358.5,'2023-10-19','cash',12),(7,120.5,30.99,151.49,'2023-10-20','cash',10),(8,75.99,45.75,121.74,'2023-10-21','gift_card',11),(9,220,25.99,245.99,'2023-10-22','card',9),(10,45.75,28,73.75,'2023-10-23','card',5),(11,150,12.5,162.5,'2023-10-24','card',8),(12,90.99,34.5,125.49,'2023-10-25','cash',9),(13,28.5,40.75,69.25,'2023-10-26','card',7),(14,200.75,28.99,229.74,'2023-10-27','card',11),(15,60,28.99,88.99,'2023-11-13','cash',1),(16,135.25,12.5,147.75,'2023-11-13','cash',10),(17,450,28,478,'2023-11-13','gift_card',1),(18,710,12.5,722.5,'2023-11-13','cash',1),(19,90,28,118,'2023-11-13','gift_card',10),(20,543,40.75,583.75,'2023-11-13','cash',10),(21,611,34.5,645.5,'2023-11-13','cash',9),(22,122,40.75,162.75,'2023-11-13','card',11),(23,1030,34.5,1064.5,'2023-11-13','cash',9);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Masaje de Aromaterapia Profunda','Sumérgete en la relajación con nuestro masaje \nde aromaterapia profunda. Se utiliza una combinación de aceites esenciales cuidadosamente \nseleccionados para aliviar la tensión muscular y promover un estado de serenidad total.',280),(2,'Tratamiento Facial Rejuvenecedor con Mascarilla de Oro','Experimenta el lujo con nuestro \ntratamiento facial rejuvenecedor. Este servicio exclusivo utiliza una mascarilla de oro que \nayuda a revitalizar la piel, reducir las líneas finas y dejar un brillo radiante.',340),(3,'Experiencia de Baño de Hidroterapia con Sales Minerales','Sumérgete en un mundo de serenidad \ncon nuestra experiencia de baño de hidroterapia. Las sales minerales en el agua nutren la piel, \nalivian el estrés y proporcionan una experiencia relajante y revitalizante.',200),(4,'Manicura y Pedicura de Spa con Tratamiento de Parafina','Embellece tus manos y pies con \nnuestra manicura y pedicura de spa. Incluye un tratamiento de parafina para hidratar y suavizar \nla piel, dejándote con uñas impecables y extremidades renovadas.',130),(5,'Yoga y Meditación Guiada en Entorno Tranquilo','Encuentra equilibrio y paz interior con \nnuestra sesión de yoga y meditación guiada. Realizada en un entorno tranquilo y armonioso, \nesta experiencia te ayuda a desconectar del estrés diario y encontrar serenidad.',310),(6,'Tratamiento Facial Rejuvenecedor','Revitaliza tu piel con nuestro tratamiento facial rejuvenecedor.\n Utilizamos técnicas avanzadas y productos de alta calidad para dejar tu piel radiante y fresca.',220.5),(7,'Experiencia de Baño de Vapor con Hierbas','Relájate y desintoxica con nuestra experiencia de baño \nde vapor. Hierbas naturales se combinan para crear un ambiente purificador que revitaliza cuerpo y \nmente.',150.99),(8,'Pedicura Deluxe con Masaje de Piernas','Mima tus pies con nuestra pedicura deluxe. Incluye un \nrelajante masaje de piernas para aliviar la tensión y dejar tus pies suaves y renovados.',80.75),(9,'Ritual de Envoltura Corporal de Algas','Embárcate en un viaje de rejuvenecimiento con nuestro \nritual de envoltura corporal de algas. Nutre y tonifica la piel para una sensación fresca y \nrevitalizante.',190),(10,'Clase de Yoga en la Naturaleza','Encuentra equilibrio y serenidad con nuestra clase de yoga \nen la naturaleza. Disfruta de la tranquilidad al aire libre mientras practicas posturas \nrejuvenecedoras.',30.99),(11,'Masaje de Piedras Calientes','Sumérgete en una experiencia única con nuestro masaje de piedras \ncalientes. Las piedras calientes se utilizan para aliviar la tensión muscular y promover \nla relajación profunda.',250.5),(12,'Tratamiento Capilar de Lujo con Aceites Esenciales','Transforma tu cabello con nuestro tratamiento \ncapilar de lujo. Utilizamos aceites esenciales para revitalizar y nutrir, dejando tu cabello sedoso \ny brillante.',180),(13,'Sesión de Meditación Guiada','Descubre la paz interior con nuestra sesión de meditación guiada. \nUn viaje tranquilo para calmar la mente y encontrar armonía en tu vida cotidiana.',40.75),(14,'Manicura con Esmalte de Gel y Masaje de Manos','Embellece tus manos con nuestra manicura de esmalte \nde gel. Disfruta de un relajante masaje mientras tus uñas lucen impecables.',60.25),(15,'Masaje Craneal de Alivio de Tensión','Libera la tensión con nuestro masaje craneal especializado. \nSe centra en la cabeza y el cuello para aliviar el estrés y promover una sensación de alivio \ninmediato.',120.99);
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `services_reserved`
--

LOCK TABLES `services_reserved` WRITE;
/*!40000 ALTER TABLE `services_reserved` DISABLE KEYS */;
INSERT INTO `services_reserved` VALUES (1,1,3,1),(2,3,4,2),(3,4,2,4),(4,8,16,6),(5,15,15,4),(6,11,12,3),(7,9,8,7),(8,5,6,7),(9,13,14,9),(10,12,2,3),(11,10,10,1),(12,10,4,4),(13,8,5,8);
/*!40000 ALTER TABLE `services_reserved` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-11 12:38:09
