BEGIN TRY

	BEGIN TRANSACTION

	print 'Iniciando la transacción...'

	-- TODO: Operaciones de la transacción

	COMMIT TRANSACTION;

	print 'La transacción fue aceptada correctamente'

END TRY
BEGIN CATCH

	print 'Hubo un error';
	print 'ERROR: ' + ERROR_MESSAGE();

	ROLLBACK TRANSACTION;

	print 'La transacción fue revertida'

END CATCH