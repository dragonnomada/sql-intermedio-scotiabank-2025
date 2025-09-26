select
	OrderID,
	(UnitPrice * Quantity) * (1 - Discount) as [Ganancia]
from [Order Details]
where OrderID in (
	select distinct OrderID from orders
	where Freight > 500
)

select distinct OrderID from orders
	where Freight > 500