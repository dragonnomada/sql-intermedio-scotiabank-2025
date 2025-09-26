select 
	OrderID, 
	CustomerID,
	Freight
from orders
where Freight > 500
order by Freight desc

select avg(freight) from orders

select 
	OrderID, 
	CustomerID,
	Freight
from orders
where Freight > 78.24
order by Freight desc

-- subconsulta de tipo escalar (integrada al filtro)
select 
	OrderID, 
	CustomerID,
	Freight
from orders
where Freight > (select avg(Freight) from orders)
order by Freight desc