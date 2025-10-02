select
	OrderID,
	CustomerID,
	OrderDate
from Orders
order by CustomerID, OrderDate

-- �C�mo podemos saber el n�mero de d�as que
-- trancurren desde una orden a la siguiente?
-- (Para cada cliente)

-- Deducir cu�ntos d�as promedio tardar� un cliente
-- en solicitar un nuevo pedido

-- Informaci�n sobre la periodicidad de solicitudes
-- de pedidos de los clientes