select
	OrderID,
	Freight,
	ntile(4)
		over (
			order by Freight
		)
	as Q
from Orders
order by OrderID