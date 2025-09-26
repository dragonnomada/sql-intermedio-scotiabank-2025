select
	CustomerID,
	min(Freight) as [Costo de envío mínimo],
	max(Freight) as [Costo de envío máximo]
from Orders
group by CustomerID
order by CustomerID