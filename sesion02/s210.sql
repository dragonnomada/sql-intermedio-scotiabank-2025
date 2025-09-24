use northwind;

select
	OrderID,
	CustomerID,
	EmployeeID,
	ShipName,
	ShipCity,
	ShipCountry,
	ShipAddress,
	ShipPostalCode
from orders
order by CustomerID asc;

-- CustomerID -> ShipName