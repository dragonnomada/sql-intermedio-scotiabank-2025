select
	EmployeeID,
	sum(Freight)
from
	Orders
group by EmployeeID
order by EmployeeID