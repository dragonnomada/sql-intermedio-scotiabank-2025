select
	*
from Orders
where ShipCountry = 'France'

union

select
	*
from Orders
where ShipCountry = 'Mexico'