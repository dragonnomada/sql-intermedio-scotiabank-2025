select 
	CustomerID, -- GRUPO (Categor�a)
	sum(Freight) as [Costo de env�o total] -- Valor de agregaci�n
from orders
group by CustomerID
order by CustomerID

-- REGLA: Lo que no est� agregado
--        debe ser agrupado