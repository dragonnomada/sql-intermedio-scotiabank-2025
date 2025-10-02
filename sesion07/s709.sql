select
	OrderID,
	CustomerID,
	Freight
from Orders
order by CustomerID

-- ¿Cómo podemos calcular la diferencia
-- entre el costo de envío y el promedio
-- de los costos de envío para 
-- cada cliente?

-- Información explica qué tan alejado
-- estaría un costo de envío respecto
-- al promedio de los envíos al cliente