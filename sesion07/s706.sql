with
	A as (
		select
			OrderID,
			CustomerID,
			OrderDate,
			LEAD(OrderDate)
				OVER (
					PARTITION BY CustomerID
					ORDER BY OrderDate
				)
			AS [Next OrderDate]
		from Orders
	), 
	B as (
		select
			OrderID,
			CustomerID,
			OrderDate,
			DATEDIFF(DAY, OrderDate, [Next OrderDate]) as [Days to Next OrderDate]
		from A
	)
select
	*
from B
order by CustomerID, OrderDate