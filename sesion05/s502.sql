select * from [Order Details]
where UnitPrice > 2 * (
	select avg(unitPrice) from [Order Details]
)