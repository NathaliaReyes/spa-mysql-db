-- Estudiante: Silvia Reyes --------

-- -------------------------------------------------------------------------------------------
-- 2. VISTAS
-- -------------------------------------------------------------------------------------------
-- VISTA 1: muestre información sobre las ventas de productos, incluyendo el nombre del cliente, 
-- 			el producto vendido, la cantidad, el total y la fecha. Además, queremos incluir solo 
-- 			aquellas ventas donde la cantidad vendida sea mayor a la cantidad promedio vendida de ese 
-- 			producto en todas las ventas.

CREATE OR REPLACE VIEW DB_SPA.VW_CUSTOMERS_PRODUCTS_SALES AS
	SELECT  s.id AS sale_id,
			c.first_name AS customer_first_name,
			c.last_name AS customer_last_name,
			p.nombre AS product_name,
			ps.quantity AS quantity_sold,
			ps.quantity * p.amount AS total_amount,
			s.fecha AS sale_date
	FROM sales s
	JOIN customers c ON s.customers_id = c.id
	JOIN products_sold ps ON s.id = ps.sales_id
	JOIN products p ON ps.products_id = p.id
	WHERE ps.quantity > (SELECT AVG(ps_avg.quantity) FROM products_sold ps_avg WHERE ps_avg.products_id = ps.products_id)
	ORDER BY s.fecha DESC;
    
-- Vista 2: Decidimos premiar a los clientes más fieles a nuestro Spa, por esto muestre los mejores clientes
-- 			que hayan generado mayor gasto total y de esta forma podremos decidir si premiar a los 3 
-- 			primeros ó 5 primeros.

CREATE OR REPLACE VIEW DB_SPA.VW_TOP_CUSTOMERS AS
	SELECT  c.id AS customer_id, c.first_name, c.last_name,
			SUM(s.total_amount) AS total_spent
	FROM customers c
	JOIN sales s ON c.id = s.customers_id
	GROUP BY c.id, c.first_name, c.last_name
	HAVING total_spent > 500
	ORDER BY total_spent DESC;
    
-- Vista 3: Deseamos saber la cantidad de productos vendidos vendidos y Disponibilidad en Stock:

CREATE OR REPLACE VIEW DB_SPA.VW_PRODUCT_SALES_STOCK AS
	SELECT p.id AS product_id, p.nombre AS product_name,
    COALESCE(SUM(ps.quantity), 0) AS total_sold, p.quantity_in_stock
	FROM products p
	JOIN products_sold ps ON p.id = ps.products_id
	GROUP BY p.id, p.nombre, p.quantity_in_stock;


-- Vista 4: Deseamos saber el monto total de cada reserva(incluidos productos y servicios) y su respectivo 
-- 			Método de Pago:

CREATE OR REPLACE VIEW DB_SPA.VW_RESERVATION_DETAILS AS
	SELECT  r.id AS reservation_id, r.reservation_number, r.fecha AS reservation_date,
			r.amount AS total_amount, s.method AS payment_method
	FROM reservations r
	JOIN sales s ON r.id = s.id;


-- Vista 5: Deseamos saber los clientes que han realizado compras frecuentes, 
-- considerando aquellos clientes que han realizado minimo tres compras distintas. 
CREATE OR REPLACE VIEW DB_SPA.VW_FREQUENT_CUSTOMERS AS
	SELECT c.id AS customer_id, c.first_name, c.last_name,
		COUNT(DISTINCT s.id) AS total_purchases
	FROM customers c
	JOIN sales s ON c.id = s.customers_id
	GROUP BY c.id, c.first_name, c.last_name
	HAVING total_purchases >= 3;
