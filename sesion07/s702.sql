select
	OrderID,
	sum(UnitPrice * Quantity) as Total
from [Order Details]
group by OrderID