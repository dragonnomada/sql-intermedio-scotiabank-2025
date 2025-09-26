select 
	CustomerID,
	EmployeeID,
	sum(Freight) as [Sum Freight]
from orders
group by cube(CustomerID, EmployeeID)
order by CustomerID, EmployeeID