-- Consulta agrupada/reducida
select 
	CustomerID,
	EmployeeID,
	sum(Freight) as [Avg Freight]
from orders
group by CustomerID, EmployeeID
order by CustomerID