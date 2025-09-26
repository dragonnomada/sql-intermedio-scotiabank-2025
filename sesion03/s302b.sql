select 
	CategoryID,
	count(CategoryID) as [Count],
	sum(UnitPrice) as [Price Sum],
	avg(UnitPrice) as [Price Avg],
	stdev(UnitPrice) as [Price Std],
	min(UnitPrice) as [Price min],
	max(UnitPrice) as [Price min]
from products
group by CategoryID