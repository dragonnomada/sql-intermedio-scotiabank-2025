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
	)
select * from B
order by CustomerID, Freight