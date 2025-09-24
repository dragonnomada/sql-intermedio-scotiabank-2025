use demo;

-- create table <nombre> ( [campo] );
--        [campo] <nombre> [tipo] [extras]
--                    [extras] primary key
--                    [extras] identity(1, 1)
--                    [extras] not null
--                    [extras] unique
--                    [extras] default <valor | function>

-- [tipo]
--         int
--         float
--         real
--         date
--         time
--         datetime2
--         bit
--         varchar(<n>)
--         nvarchar(<n>)
--         varbinary(<n>)

create table pruebas (
	prueba_id int primary key identity(1, 1),
	nombre nvarchar(120) not null,
	estatus varchar(20)
);