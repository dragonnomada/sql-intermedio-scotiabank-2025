-- subconsulta de tipo escalar (integrada como un campo)

select
	OrderID,
	Freight,
	(select avg(Freight) from orders) as [Avg Freight]
from orders