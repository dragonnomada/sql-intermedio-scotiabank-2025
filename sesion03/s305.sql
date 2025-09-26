select 
	CustomerID, -- GRUPO (Categoría)
	sum(Freight) as [Costo de envío total] -- Valor de agregación
from orders
group by CustomerID
order by CustomerID

-- REGLA: Lo que no esté agregado
--        debe ser agrupado