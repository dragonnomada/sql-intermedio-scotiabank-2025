select 
	OrderID,
	UnitPrice,
	Quantity,
	(UnitPrice * Quantity) as Total
from [Order Details]