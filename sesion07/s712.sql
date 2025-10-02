with
	A as (
		select
			OrderID,
			CustomerID,
			Freight,
			avg(Freight)
				over (
					partition by CustomerID
				)
			as [Freight Mean]
		from Orders
	),
	B as (
		select
			*,
			Freight - [Freight Mean] as [Distance Freight],
			(Freight - [Freight Mean]) / [Freight Mean] as [Inflate Freight]
		from A
	),
	C as (
		select
			CustomerID,
			[Inflate Freight]
		from B
	),
	D as (
		select
			CustomerID,
			1000 * sum([Inflate Freight]) as [Index Freight]
		from C
		group by CustomerID
	)
select * from D
-- order by CustomerID, Freight
order by [Index Freight] desc, CustomerID