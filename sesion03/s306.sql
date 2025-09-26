select
	CustomerID,
	avg(Freight) as [Costo de env�o promedio],
	2 * stdev(Freight) as [Desviaci�n del costo de env�o al 95%]
from Orders
group by CustomerID
order by CustomerID