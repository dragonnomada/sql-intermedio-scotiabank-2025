select
	CustomerID,
	min(Freight) as [Costo de env�o m�nimo],
	max(Freight) as [Costo de env�o m�ximo]
from Orders
group by CustomerID
order by CustomerID