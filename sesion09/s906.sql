BEGIN TRY

	BEGIN TRANSACTION

	print 'Iniciando la transacci�n...'

	-- TODO: Operaciones de la transacci�n

	COMMIT TRANSACTION;

	print 'La transacci�n fue aceptada correctamente'

END TRY
BEGIN CATCH

	print 'Hubo un error';
	print 'ERROR: ' + ERROR_MESSAGE();

	ROLLBACK TRANSACTION;

	print 'La transacci�n fue revertida'

END CATCH