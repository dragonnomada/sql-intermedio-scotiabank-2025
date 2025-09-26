-- consulta conjunto/vector/serie

-- conjunto (valores son distintos)
select distinct CustomerID from orders

-- vector (valores numéricos)
select Freight from orders

-- serie (valores complejos)
select OrderDate from orders

-- vector (valores numéricos)
select year(OrderDate) as [Year] from orders