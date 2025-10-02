with
	A as (
		select
			OrderID,
			CustomerID,
			OrderDate,
			FIRST_VALUE(OrderDate)
				OVER (
					PARTITION BY CustomerID
					ORDER BY OrderDate
				)
			AS [First OrderDate]
		from Orders
	),
	B as (
		select
			OrderID,
			CustomerID,
			OrderDate,
			[First OrderDate],
			DATEDIFF(DAY, [First OrderDate], OrderDate) as [Days since first OrderDate]
		from A
	)
select * from B
order by CustomerID, OrderDate