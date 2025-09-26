-- Funciones de agregación a nivel global (tabla)

select 
	count(*) as Total, 
	sum(UnitPrice) as [Price Sum], 
	avg(UnitPrice) as [Price Avg], 
	stdev(UnitPrice) as [Price Std],
	min(UnitPrice) as [Price Min],
	max(UnitPrice) as [Price Max]
from
	[Order Details]