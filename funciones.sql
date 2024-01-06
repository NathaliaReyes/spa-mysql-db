-- Estudiante: Silvia Reyes --------

-- -------------------------------------------------------------------------------------------
-- 4. FUNCIONES
-- -------------------------------------------------------------------------------------------
-- Función 1 : Para acceder a servicios de spa invasivos, es requisito tener al menos 18 años. 
-- 			   Se solicita conocer la edad de los clientes que deseen disfrutar de estos servicios.

-- SELECT VERSION();


DROP FUNCTION IF EXISTS FN_CALCULAR_MAYOR_EDAD;

DELIMITER //
CREATE FUNCTION FN_CALCULAR_MAYOR_EDAD(P_BIRTH_DATE DATE) 
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE V_EDAD INT;
    DECLARE V_ANO_ACTUAL INT;
    DECLARE V_ANO_NACIMIENTO INT;
    DECLARE V_CUMPLEANOS_PASADO BOOLEAN;
    SET V_ANO_ACTUAL = YEAR(CURDATE());
    SET V_ANO_NACIMIENTO = YEAR(P_BIRTH_DATE);
    SET V_CUMPLEANOS_PASADO = DATE_FORMAT(CURDATE(), '%m%d') >= DATE_FORMAT(P_BIRTH_DATE, '%m%d');

    IF V_CUMPLEANOS_PASADO THEN
        SET V_EDAD = V_ANO_ACTUAL - V_ANO_NACIMIENTO;
    ELSE
        SET V_EDAD = V_ANO_ACTUAL - V_ANO_NACIMIENTO - 1;
    END IF;

    RETURN V_EDAD;
END //
DELIMITER ;

SELECT FN_CALCULAR_MAYOR_EDAD('2010-11-12') AS EDAD;

-- Función 2 : Se desea tener una función que realice descuentos.Dependiendo de que especial tengamos 
-- se le realizará un descuento del 5, 10 o 20% a la reserva de cada cliente.

DROP FUNCTION IF EXISTS FN_CALCULAR_TOTAL_CON_DESCUENTO;

DELIMITER //
CREATE FUNCTION FN_CALCULAR_TOTAL_CON_DESCUENTO (P_TOTAL_AMOUNT DOUBLE, 
												 P_DESCOUNT DOUBLE) 
RETURNS DOUBLE
DETERMINISTIC
BEGIN
    DECLARE V_TOTAL_CON_DESCUENTO DOUBLE;
    SET V_TOTAL_CON_DESCUENTO = P_TOTAL_AMOUNT - (P_TOTAL_AMOUNT * (P_DESCOUNT / 100));
    RETURN V_TOTAL_CON_DESCUENTO;
END //
DELIMITER ;

SELECT FN_CALCULAR_TOTAL_CON_DESCUENTO(2300.99, 10.00) AS TOTAL_CON_DESCUENTO;