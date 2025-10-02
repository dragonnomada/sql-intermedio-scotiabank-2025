select
	OrderID,
	ProductID,
	UnitPrice,
	Quantity,
	UnitPrice * Quantity as Total
from [Order Details]