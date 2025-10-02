select
	OrderID,
	CustomerID,
	Freight,
	avg(Freight)
		over (
			partition by CustomerID
		)
	as [Freight Mean]
from Orders
order by CustomerID, Freight