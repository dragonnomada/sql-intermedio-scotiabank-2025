-- Funciones de agregaci�n a nivel global (tabla)

select 
	COUNT(Freight) as [Total de env�os], 
	SUM(Freight) as [Gasto total en env�os],
	MIN(Freight) as [Costo m�nimo de env�o],
	MAX(Freight) as [Costo m�ximo de env�o],
	AVG(Freight) as [Costo promedio de env�o],
	STDEV(Freight) as [Desviaci�n del costo de env�o],
	AVG(Freight) + 2 * STDEV(Freight) as [Costo m�ximo relativo al 95% de env�o]
from orders