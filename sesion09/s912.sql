-- Ejercicio:
-- Insertar un nuevo préstamo de $5,000 para el cliente 2 (TA: 12%)
-- Condición 1: El cliente no debe tener más de 3 préstamos
-- Condición 2: El cliente no puede superar más de $10,000 en préstamos

begin transaction;

print 'Insertado un préstamo de $5,000 para el cliente 2';

-- Contar el número de préstamos del cliente
declare @totalPrestamos int;
set @totalPrestamos = (
	select count(*) 
	from prestamos
	where clienteId = 2
); -- subconsulta escalar

if @totalPrestamos >= 4
begin
	print 'El cliente no puede tener más de 3 préstamos';
	print 'Actualmente tiene ' + cast(@totalPrestamos as nvarchar) + ' préstamos';
	-- Fallar la transacción
	-- THROW <código>, '<mensaje>', 1;
	throw 50000, 'Límite de préstamos superados', 1;
end

-- Calcular el monto total de préstamos al cliente
declare @montoSuma decimal(10, 2);
set @montoSuma = (
	select sum(monto)
	from prestamos
	where clienteId = 2
); -- subconsulta escalar

if @montoSuma + 5000 >= 10000
begin
	print 'Al cliente no se le pueden prestar más de $10,000';
	print 'Actualmente tiene $' + cast(@montoSuma as nvarchar) + ' prestado';
	-- Fallar la transacción
	-- THROW <código>, '<mensaje>', 1;
	throw 50000, 'Límite del monto de préstamos superado', 1;
end

insert into prestamos (clienteId, monto, tasaInteresAnual)
	values (2, 5000, 0.12)

print 'Préstamo aprobado e insertado'

-- Finalizar o aceptar la transacción

commit transaction

print 'Fin de la transacción'