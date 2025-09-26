select 
	CustomerID,
	Count(CustomerID) as [Count]
from orders
group by CustomerID