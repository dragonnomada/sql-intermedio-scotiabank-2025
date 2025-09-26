select
	OrderID,
	min(Quantity)
from [Order Details]
group by OrderID