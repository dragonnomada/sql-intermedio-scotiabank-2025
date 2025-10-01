with
	A as (
		select
			*
		from Orders
		where ShipCountry = 'France'

		union all

		select
			*
		from Orders
		where ShipCountry = 'Mexico'
	)
select 
	ShipCountry,
	count(ShipCountry) as OrdersCount,
	sum(Freight) as FreightSum,
	min(Freight) as FreightMin,
	max(Freight) as FreightMax,
	avg(Freight) as FreightAvg,
	stdev(Freight) as FreightStd
from A
group by ShipCountry