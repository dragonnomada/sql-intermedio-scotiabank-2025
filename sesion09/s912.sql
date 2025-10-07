-- Ejercicio:
-- Insertar un nuevo pr�stamo de $5,000 para el cliente 2 (TA: 12%)
-- Condici�n 1: El cliente no debe tener m�s de 3 pr�stamos
-- Condici�n 2: El cliente no puede superar m�s de $10,000 en pr�stamos

begin transaction;

print 'Insertado un pr�stamo de $5,000 para el cliente 2';

-- Contar el n�mero de pr�stamos del cliente
declare @totalPrestamos int;
set @totalPrestamos = (
	select count(*) 
	from prestamos
	where clienteId = 2
); -- subconsulta escalar

if @totalPrestamos >= 4
begin
	print 'El cliente no puede tener m�s de 3 pr�stamos';
	print 'Actualmente tiene ' + cast(@totalPrestamos as nvarchar) + ' pr�stamos';
	-- Fallar la transacci�n
	-- THROW <c�digo>, '<mensaje>', 1;
	throw 50000, 'L�mite de pr�stamos superados', 1;
end

-- Calcular el monto total de pr�stamos al cliente
declare @montoSuma decimal(10, 2);
set @montoSuma = (
	select sum(monto)
	from prestamos
	where clienteId = 2
); -- subconsulta escalar

if @montoSuma + 5000 >= 10000
begin
	print 'Al cliente no se le pueden prestar m�s de $10,000';
	print 'Actualmente tiene $' + cast(@montoSuma as nvarchar) + ' prestado';
	-- Fallar la transacci�n
	-- THROW <c�digo>, '<mensaje>', 1;
	throw 50000, 'L�mite del monto de pr�stamos superado', 1;
end

insert into prestamos (clienteId, monto, tasaInteresAnual)
	values (2, 5000, 0.12)

print 'Pr�stamo aprobado e insertado'

-- Finalizar o aceptar la transacci�n

commit transaction

print 'Fin de la transacci�n'