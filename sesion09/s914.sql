-- Procedimiento almacenado (Store-Procedure)

-- Estable como ejecutar 
-- transacciones parametrizadas
-- de forma almacenada y reutilizable

-- SINTAXIS: create procedure sp_<nombre>
--           (@param1 <TIPO 1>, ...)
--           as <TRANSACCIONAL>

CREATE PROCEDURE sp_AgregarPrestamo
	(
		@clienteId INT,
		@montoPrestamo DECIMAL(10, 2),
		@tasaAnual decimal(10, 2),
		@maximoPrestamos INT,
		@limitePrestamo DECIMAL(10, 2)
	)
as
begin
	
	begin try

		begin transaction;

		print 'Insertando un nuevo pr�stamo para el cliente ' + cast(@clienteId as nvarchar);
		print 'El prest�mo ser� por: $' + cast(@montoPrestamo as nvarchar);
		print 'A una tasa de inter�s anual del ' + cast(@tasaAnual * 100 as nvarchar) + '%';

		print 'Condici�n 1: El cliente no puede tener m�s de ' + cast(@maximoPrestamos as nvarchar) + ' pr�stamos';

		declare @totalPrestamos int;
		set @totalPrestamos = (
			select count(*) 
			from prestamos 
			where clienteId = @clienteId
		);

		print 'El cliente tiene actualmente ' + cast(@totalPrestamos as nvarchar) + ' pr�stamos';

		if @totalPrestamos >= @maximoPrestamos
		begin
			print 'El cliente super� el n�mero m�ximo de pr�stamos permitidos';
			throw 50000, 'M�ximo de pr�stamos superados', 1;
		end

		print 'Se cumple la condici�n 1';

		print 'Condici�n 2: El cliente no puede superar un monto de $' + cast(@limitePrestamo as nvarchar) + ' en pr�stamos';

		declare @montoPrestado decimal(10, 2);
		set @montoPrestado = (
			select sum(monto)
			from prestamos
			where clienteId = @clienteId
		);

		print 'Al cliente se le ha prestado $' + cast(@montoPrestado as nvarchar);
		print 'Acumular�a en prestamos $' + cast(@montoPrestado + @montoPrestamo as nvarchar)

		if @montoPrestado + @montoPrestamo >= @limitePrestamo
		begin
			print 'El cliente ha superado el l�mite de lo que se le puede prestar';
			throw 50000, 'L�mite prestado superado', 1;
		end

		print 'Se cumple la condici�n 2';

		print 'El cliente es candidato al pr�stamo';

		insert into prestamos (clienteId, monto, tasaInteresAnual)
			values (@clienteId, @montoPrestamo, @tasaAnual);

		print 'El pr�stamo fue registrado';

		declare @prestamoId int = SCOPE_IDENTITY();

		print 'Pr�stamo #' + cast(@prestamoId as nvarchar);

		commit transaction;

		print 'La transacci�n ha concluido exit�samente';

	end try
	begin catch

		print 'Fall� la transacci�n';
		print 'ERROR: ' + ERROR_MESSAGE();
		rollback transaction;

	end catch;

end