IF OBJECT_ID('clientes', 'U') is not null
	drop table clientes

create table clientes (
	clienteId int identity(1, 1), -- primary key
	nombre nvarchar(120) not null, -- ! El nombre completo podría generar valores no atómicos
	correo nvarchar(150) unique not null,
	sexo int default -1,
	constraint pk_clienteId primary key (clienteId)
)

-- 1FN (campos atómicos: no hay multivalores, sin redudancia en campos ni extensibilidad)
-- 2FN (si la clave primaria es compuesta: todos los campos dependen complemente de ella / no de una parte)
-- 3FN (campos independientes: no hay dependencia o transición entre campos no claves)
-- BCFN (campos no transtivos en cadena: no hay depedencia del tipo X -> Y -> Z)
-- 4FN (no hay bloques o conjuntos repetitivos entre un grupo de columnas)