select
	OrderID,
	sum(UnitPrice * Quantity) 
		over(partition by OrderID)
	as Total
from [Order Details]