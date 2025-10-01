select
	A.OrderID,
	A.ProductID,
	B.ProductName,
	B.CategoryID
from [Order Details] A
full join Products B on A.ProductID = 1 and B.ProductID = 1
order by ProductID