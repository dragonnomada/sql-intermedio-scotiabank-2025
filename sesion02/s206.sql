-- select [campos] from [tabla]
-- select [campos] from ([subconsulta]) <referencia>

select
	* 
from (
	select 
		OrderID, 
		--OrderDate, 
		--RequiredDate, 
		--ShippedDate,
		DATEDIFF(DAY, OrderDate, RequiredDate) as RequieredDays,
		DATEDIFF(DAY, OrderDate, ShippedDate) as DelayDays,
		DATEDIFF(DAY, ShippedDate, RequiredDate) as ShippedDays
	from orders
) T1
where T1.ShippedDays is not null and T1.ShippedDays <= 0
order by T1.ShippedDays asc