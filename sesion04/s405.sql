select 
	CustomerID,
	EmployeeID,
	sum(Freight) as [Sum Freight]
from orders
group by rollup(CustomerID, EmployeeID)
order by CustomerID