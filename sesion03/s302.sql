-- Funciones de agregación a nivel global (tabla)

select 
	COUNT(Freight) as [Total de envíos], 
	SUM(Freight) as [Gasto total en envíos],
	MIN(Freight) as [Costo mínimo de envío],
	MAX(Freight) as [Costo máximo de envío],
	AVG(Freight) as [Costo promedio de envío],
	STDEV(Freight) as [Desviación del costo de envío],
	AVG(Freight) + 2 * STDEV(Freight) as [Costo máximo relativo al 95% de envío]
from orders