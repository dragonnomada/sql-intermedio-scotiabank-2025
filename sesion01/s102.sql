USE northwind

-- SELECT <campos> FROM <tabla>;

-- SELECT <campos T> FROM (<subconsulta>) T

SELECT 
	OD.*, 
	OD.Subtotal * (1 - OD.Discount) AS TOTAL 
FROM (
	SELECT 
		*, 
		UnitPrice * Quantity AS Subtotal
	FROM [Order Details]
) OD;