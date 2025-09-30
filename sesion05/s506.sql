select
	OrderID,
	sum(Total) as Total
from (
	select 
		OrderID,
		UnitPrice,
		Quantity,
		(UnitPrice * Quantity) as Total
	from [Order Details]
) [Orders Total]
group by OrderID