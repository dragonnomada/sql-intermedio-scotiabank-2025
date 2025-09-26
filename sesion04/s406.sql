select
	CustomerID,
	sum(Freight) as [Sum Freight]
from orders
group by CustomerID
order by CustomerID