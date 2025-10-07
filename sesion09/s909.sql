begin transaction

declare @id int;

insert into clientes (nombre, correo)
	--output INSERTED.clienteId into @id
	values ('Tomás', 'tomas@google.com');

-- Ajustamos la variable a una función o una subconsulta
set @id = (select SCOPE_IDENTITY())
-- set @id = SCOPE_IDENTITY()

select @id