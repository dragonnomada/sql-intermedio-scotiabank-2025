select
	OrderID,
	CustomerID,
	OrderDate
from Orders
order by CustomerID, OrderDate

-- ¿Cómo podemos saber el número de días que
-- trancurren desde una orden a la siguiente?
-- (Para cada cliente)

-- Deducir cuántos días promedio tardará un cliente
-- en solicitar un nuevo pedido

-- Información sobre la periodicidad de solicitudes
-- de pedidos de los clientes