select -- TC
	avg(Total),
	stdev(Total),
	2 * stdev(Total),
	avg(Total) + 2 * stdev(Total)
from (
	select -- TB
		OrderID,
		sum(Total) as Total
	from (
		select -- TA
			OrderID,
			UnitPrice,
			Quantity,
			(UnitPrice * Quantity) as Total
		from [Order Details]
	) [Orders Total]
	group by OrderID 
) [Orders Total] -- Generales p/c orden