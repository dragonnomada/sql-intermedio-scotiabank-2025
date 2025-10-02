select
	OrderID,
	CustomerID,
	OrderDate,
	LEAD(OrderDate) -- Desplaza hacia adelante
		OVER ( -- Abrir una ventana
			PARTITION BY CustomerID -- Partida/agrupada por cliente
			ORDER BY OrderDate -- Con orden interno por fecha (de la partición)
		)
	AS [Next OrderDate]
from Orders
order by CustomerID, OrderDate