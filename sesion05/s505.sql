select
	OrderID,
	Total
from (
	select 
		OrderID,
		UnitPrice,
		Quantity,
		(UnitPrice * Quantity) as Total
	from [Order Details]
) [Orders Total] -- Resumidos desgloasados por orden