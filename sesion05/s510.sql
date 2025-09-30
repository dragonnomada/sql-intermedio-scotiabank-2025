with
	TA as (
		select 
			OrderID,
			UnitPrice,
			Quantity,
			(UnitPrice * Quantity) as Total
		from [Order Details]
	),
	TB as (
		select
			OrderID,
			sum(Total) as Total
		from TA
		group by OrderID
	),
	TC as (
		select
			avg(Total) as [Total AVG],
			stdev(Total) as [Total STD],
			2 * stdev(Total) as [Total STD2],
			avg(Total) + 2 * stdev(Total) as [Total MaxRel]
		from TB
	),
	MaxRel as (
		select [Total MaxRel] from TC
	),
	TD as (
		select
			*
		from TB
		where
			TB.Total > (select * from MaxRel)
	),
	TE as (
		select
			Orders.OrderID,
			Orders.CustomerID,
			TD.Total
		from Orders
		join TD on Orders.OrderID = TD.OrderID
	)
select * from TE
order by Total desc
--select [Total MaxRel] from TC