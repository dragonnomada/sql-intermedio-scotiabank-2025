USE northwind

SELECT 
	*, 
	UnitPrice * Quantity AS Subtotal,
	(UnitPrice * Quantity) * (1 - Discount) AS Total
FROM [Order Details]