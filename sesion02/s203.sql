use demo;

-- insert into <tabla> (<campo1>, <campo2>, ...)
--     values (<valor1>, <valor2>, ...), ...

-- <valor?> - 'texto', 123, 1/0, current_timestamp

insert pruebas (nombre, estatus)
values ('Prueba 1', 'OK'), ('Prueba 2', 'FALLA');