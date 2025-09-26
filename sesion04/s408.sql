select
	null as CustomerID,
	null as EmployeeID,
	sum(Freight) as [Sum Freight]
from orders

union all

select
	CustomerID,
	null as EmployeeID,
	sum(Freight) as [Sum Freight]
from orders
group by CustomerID

union all

select
	CustomerID,
	EmployeeID,
	sum(Freight) as [Sum Freight]
from orders
group by CustomerID, EmployeeID

order by CustomerID, EmployeeID