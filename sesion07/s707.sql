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
order by CustomerID, OrderDate