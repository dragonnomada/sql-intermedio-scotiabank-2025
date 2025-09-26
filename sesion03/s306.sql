select
	CustomerID,
	avg(Freight) as [Costo de envío promedio],
	2 * stdev(Freight) as [Desviación del costo de envío al 95%]
from Orders
group by CustomerID
order by CustomerID