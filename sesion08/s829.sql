with
	A as (
		select
			prestamoId,
			datepart(year, fechaSolicitud) as [anio],
			datepart(month, fechaSolicitud) as [mes],
			monto
		from prestamos
	)
select
	anio, 
	mes,
	count(prestamoId) as [prestamos],
	sum(monto) as [monto total]
from A
group by anio, mes