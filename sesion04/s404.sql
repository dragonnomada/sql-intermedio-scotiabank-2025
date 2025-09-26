-- Consulta total/desglosada
select 
	CustomerID,
	EmployeeID,
	Freight
from orders
order by CustomerID, EmployeeID