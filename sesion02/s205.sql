use northwind;

-- select OrderID, OrderDate, RequiredDate, ShippedDate from orders;

-- Solicitudes (Solicitud) | Requerimientos (Entrega) | Envíos (Envío)

-- DATEDIFF(<momento>, <fecha1>, <fecha2>)
-- <momento> - YEAR | MONTH | WEEK | DAY | HOUR | MINUTE
-- <fecha2> - <fecha1>

select 
	OrderID, 
	OrderDate, 
	RequiredDate, 
	ShippedDate,
	DATEDIFF(DAY, OrderDate, RequiredDate) as RequieredDays,
	DATEDIFF(DAY, OrderDate, ShippedDate) as DelayDays,
	DATEDIFF(DAY, ShippedDate, RequiredDate) as ShippedDays
from orders
	order by ShippedDays asc
;