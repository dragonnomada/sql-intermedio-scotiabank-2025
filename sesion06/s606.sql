select
	A.OrderID,
	A.ProductID,
	B.ProductName,
	B.CategoryID
from [Order Details] A
right join Products B on B.ProductID = 1
order by ProductID