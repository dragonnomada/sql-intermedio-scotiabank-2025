-- consultas

-- SELECT [TOP <n>]
--		<field 1>,
--		<field 2>,
--		...,
--		<field k>,
-- FROM <tabla | subconsulta> AS <alias>

-- extensión

-- [LEFT | RIGHT | INNER | OUTER/FULL] JOIN <tablaExtendida | subconsultaExtendida> <aliasExtendida> 
--		ON <comparación | fusión>

-- uniones

-- UNION [ALL]

-- * Cuando se hace una unión de tipo [ALL] se preservan los resultados duplicados

-- agrupación

-- GROUP BY <field g1>, <field g2>, ...

-- * Los campos no agrupados deben ser agregados, mediante alguna función de agregación
--   <agg function>: COUNT(<field>)
--					 SUM(<field>)
--					 AVG(<field>)
--					 STDEV(<field>)
--					 VAR(<field>)
--					 MIN(<field>)
--					 MAX(<field>)

-- filtros

-- WHERE <condición>

-- <condición>: <field j> <operador> <valor>
-- <operador>: Lógico (>, >=, <, <=, =, <>, IS, IS NOT)
--             Pertenencia (IN, NOT IN)
--             SIMILITUD (LIKE) % >>> comodín | - >>> caracter

-- orden

-- ORDER BY <field i1> [ASC | DESC], <field i2> [ASC | DESC], ...