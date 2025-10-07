-- Uso de variables

-- Las variables son dep�sitos de resultados intermedios
-- que se pueden ajustar durante una transacci�n
-- para incorporar el resultado durante las operaciones

-- Por ejemplo, guardar un monto, los IDs generados en las inserciones,
-- c�lculos intermedios (totales, promedios, umbrales, l�mites, etc).

-- SINTAXIS: DECLARE @<nombre> <TIPO> [= <valor por defecto>]

-- USO: select * from @<nombre>

begin transaction

-- Variable de tipo TABLA que recupera todos los IDs insertados
DECLARE @IDs TABLE (id INT);

insert into clientes (nombre, correo)
	-- Sacamos los IDs insertados a la variable @IDs
	OUTPUT INSERTED.clienteId INTO @IDs 
	values ('Salma', 'salma_h@empresa.com');

select * from @IDs