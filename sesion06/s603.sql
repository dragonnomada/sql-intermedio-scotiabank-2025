-- extensiones JOIN

select
	A.OrderID,
	A.CustomerID,
	A.EmployeeID,
	A.OrderDate,
	B.ProductID,
	B.UnitPrice,
	B.Quantity
from Orders as A
left join [Order Details] as B on A.OrderID = B.OrderID
order by A.EmployeeID, A.CustomerID, A.OrderDate desc