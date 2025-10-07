-- Transacciones

-- Operaciones controladas 
-- para manejar errores y 
-- revertir el estado previo

-- Las transacciones pueden provocar
-- dos tipos de desenlaces:
-- 1. REVERTIR LA TRANSACCI�N (Cancelar)
-- 2. CONFIRMAR LA TRANSACCI�N (Aceptar)

BEGIN TRANSACTION;

insert into clientes (nombre, correo)
	values ('Gaby', 'gab.123@gmail.com');

IF EXISTS (
	select 
		clienteId 
	from clientes 
		where correo = 'gab.123@gmail.com'
)
	BEGIN
		print 'El cliente fue insertado'
	END
ELSE
	BEGIN
		print 'El cliente no se insert�'
		-- Revierte la transacci�n
		ROLLBACK TRANSACTION;
	END

print 'Continua la transacci�n'

update clientes set sexo = 0 
	where correo = 'gab.123@gmail.com'

print 'El cliente fue actualizado'

-- Confirma la transacci�n
COMMIT TRANSACTION;

print 'Fin de la transacci�n'