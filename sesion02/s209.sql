use northwind;

select 
	*,
	T1.Subtotal * (1 - T1.Discount) as Total
from (
	select 
		OrderID,
		UnitPrice,
		Quantity,
 		UnitPrice * Quantity as Subtotal,
		Discount
	from [order details]
) T1