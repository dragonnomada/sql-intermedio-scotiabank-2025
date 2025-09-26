select Sub1.* from (
	select
		OrderID,
		min(Quantity) as [Min Quantity]
	from [Order Details]
	group by OrderID
) Sub1
where Sub1.[Min Quantity] >= 10

-- CTE (Common Table Expressions)