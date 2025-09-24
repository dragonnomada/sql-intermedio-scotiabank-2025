use northwind;

select 
	OrderID,
	UnitPrice,
	Quantity,
	UnitPrice * Quantity as Subtotal
from [order details];