IF OBJECT_ID('prestamos', 'U') is not null
	drop table prestamos

create table prestamos (
	prestamoId int identity(1, 1),
	clienteId int not null, -- foreign key
	monto decimal(10, 2) not null,
	tasaInteresAnual decimal(10, 2) not null,
	fechaSolicitud datetime2 unique not null default current_timestamp,
	tipoPrestamo int not null default 1,
	constraint pk_prestamoId primary key (prestamoId),
	constraint fk_clienteId foreign key (clienteId)
		references clientes(clienteId)
		-- on delete no action
		-- on delete cascade !! borra recursivamente
		-- on delete set null !! solo si se permite null
		-- on delete set default !! solo si hay un cliente por defecto
)