select 
	OrderID,
	SUM(UnitPrice * Quantity) as Total
from [Order Details]
group by OrderID

-- Usa OrderID como grupo, 
-- entonces los repetidos los suma