-- consultas
-- select * from

-- subconsultas
-- escalar: select avg(UnitPrice) from [Order Details]
-- conjunto: select OrderID from Orders
-- tabla: select OrderID, CustomerID, OrderDate from Orders

-- caso 1: select * from [Orders Details] where UnitPrice > (<subconsulta escalar>)
-- caso 2: select *, (<subconsulta escalar>) from [Orders Details]
-- caso 3: select * from [Order Details] where OrderID in (<subconsulta conjunto>)
-- caso 4: select OrderID, CustomerID, min(OrderDate) from (<subconsulta tabla>)

-- CTE (Common Table Expressions)
-- with 
--		<name1> as (<subconsulta1>),
--		<name2> as (<subconsulta2>),
--      ...
--		<nameN> as (<subconsultaN>),
-- select * from <nameN>