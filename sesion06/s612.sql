-- <window function | agg function>
--	OVER (<window>)

-- <window>: <partition> <order> <frame>

-- <partition>: PARTITION BY <g1>, <g2>, ...

-- * La partición es similar a lo que hace GROUP BY <g1>, <g2>, ...

-- <order>: ORDER BY <i1>, <i2>, ...

-- * Determina la secuencia explícita de organazación de los grupos (particiones)

-- <frame>: ROWS BETWEEN <cursor start> AND <cursor end>
--          RANGE BETWEEN <cursor start> AND <cursor end>

-- * ROWS es exclusiva (no va más allá de CURRENT ROW)
-- * RANGE es inclusiva (podría abarcar el FOLLOWING)

-- <cursor>: <n>|UNBOUNDED PRECEDING|FOLLOWING
--           CURRENT ROW

select
	OrderID,
	ProductID,
	SUM(UnitPrice * Quantity)
		over (
			partition by OrderID
		)
	as Total
from [Order Details]
