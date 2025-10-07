exec sp_AgregarPrestamo 
	@clienteId=4,
	@montoPrestamo=500,
	@tasaAnual=0.08,
	@maximoPrestamos=4,
	@limitePrestamo=12000;