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

		print 'Insertando un nuevo préstamo para el cliente ' + cast(@clienteId as nvarchar);
		print 'El prestámo será por: $' + cast(@montoPrestamo as nvarchar);
		print 'A una tasa de interés anual del ' + cast(@tasaAnual * 100 as nvarchar) + '%';

		print 'Condición 1: El cliente no puede tener más de ' + cast(@maximoPrestamos as nvarchar) + ' préstamos';

		declare @totalPrestamos int;
		set @totalPrestamos = (
			select count(*) 
			from prestamos 
			where clienteId = @clienteId
		);

		print 'El cliente tiene actualmente ' + cast(@totalPrestamos as nvarchar) + ' préstamos';

		if @totalPrestamos >= @maximoPrestamos
		begin
			print 'El cliente superó el número máximo de préstamos permitidos';
			throw 50000, 'Máximo de préstamos superados', 1;
		end

		print 'Se cumple la condición 1';

		print 'Condición 2: El cliente no puede superar un monto de $' + cast(@limitePrestamo as nvarchar) + ' en préstamos';

		declare @montoPrestado decimal(10, 2);
		set @montoPrestado = (
			select sum(monto)
			from prestamos
			where clienteId = @clienteId
		);

		print 'Al cliente se le ha prestado $' + cast(@montoPrestado as nvarchar);
		print 'Acumularía en prestamos $' + cast(@montoPrestado + @montoPrestamo as nvarchar)

		if @montoPrestado + @montoPrestamo >= @limitePrestamo
		begin
			print 'El cliente ha superado el límite de lo que se le puede prestar';
			throw 50000, 'Límite prestado superado', 1;
		end

		print 'Se cumple la condición 2';

		print 'El cliente es candidato al préstamo';

		insert into prestamos (clienteId, monto, tasaInteresAnual)
			values (@clienteId, @montoPrestamo, @tasaAnual);

		print 'El préstamo fue registrado';

		declare @prestamoId int = SCOPE_IDENTITY();

		print 'Préstamo #' + cast(@prestamoId as nvarchar);

		commit transaction;

		print 'La transacción ha concluido exitósamente';

	end try
	begin catch

		print 'Falló la transacción';
		print 'ERROR: ' + ERROR_MESSAGE();
		rollback transaction;

	end catch;

end