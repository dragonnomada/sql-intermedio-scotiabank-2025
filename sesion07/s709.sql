select
	OrderID,
	CustomerID,
	Freight
from Orders
order by CustomerID

-- �C�mo podemos calcular la diferencia
-- entre el costo de env�o y el promedio
-- de los costos de env�o para 
-- cada cliente?

-- Informaci�n explica qu� tan alejado
-- estar�a un costo de env�o respecto
-- al promedio de los env�os al cliente