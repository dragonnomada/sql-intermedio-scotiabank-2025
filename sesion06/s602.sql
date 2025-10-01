-- consultas

-- SELECT [TOP <n>]
--		<field 1>,
--		<field 2>,
--		...,
--		<field k>,
-- FROM <tabla | subconsulta> AS <alias>

-- extensi�n

-- [LEFT | RIGHT | INNER | OUTER/FULL] JOIN <tablaExtendida | subconsultaExtendida> <aliasExtendida> 
--		ON <comparaci�n | fusi�n>

-- uniones

-- UNION [ALL]

-- * Cuando se hace una uni�n de tipo [ALL] se preservan los resultados duplicados

-- agrupaci�n

-- GROUP BY <field g1>, <field g2>, ...

-- * Los campos no agrupados deben ser agregados, mediante alguna funci�n de agregaci�n
--   <agg function>: COUNT(<field>)
--					 SUM(<field>)
--					 AVG(<field>)
--					 STDEV(<field>)
--					 VAR(<field>)
--					 MIN(<field>)
--					 MAX(<field>)

-- filtros

-- WHERE <condici�n>

-- <condici�n>: <field j> <operador> <valor>
-- <operador>: L�gico (>, >=, <, <=, =, <>, IS, IS NOT)
--             Pertenencia (IN, NOT IN)
--             SIMILITUD (LIKE) % >>> comod�n | - >>> caracter

-- orden

-- ORDER BY <field i1> [ASC | DESC], <field i2> [ASC | DESC], ...