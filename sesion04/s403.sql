select
	CustomerID,
	EmployeeID,
	Count(EmployeeID) as [Orders by Employee]
from orders
group by CustomerID, EmployeeID
order by CustomerID