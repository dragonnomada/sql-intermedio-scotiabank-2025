select
	A.OrderID,
	A.ProductID,
	B.ProductName,
	B.CategoryID
from [Order Details] A
left join Products B on A.ProductID = 1
order by ProductID