-- Common Table Expressions (CTE)

-- * Legibilidad (subconsultas m�s limpias)
-- * Reutilizable (subconsultas reutilizables)
-- * Recursivas (subconsultas c�clica)

-- SINTAXIS: WITH <name> (<col1>, <col2>, ...)
--              AS (<sub>), ...
--           select * from <name>

with 
	OrdersTotal as (
		select
			OrderID,
			UnitPrice,
			Quantity,
			(UnitPrice * Quantity) as Total
		from [Order Details]
	)
select * from OrdersTotal
where OrdersTotal.Total > 5613