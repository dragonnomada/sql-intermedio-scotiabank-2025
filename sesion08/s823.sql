-- �ndices: Mejorar las b�squedas

-- CLUSTERED - (por defecto en llaves primarias y solo se admite uno por tabla)
-- Cambiar el orden f�sico de la columna �ndice en la tabla

-- NONCLUSTERED
-- Mantener de forma separada el orden de la(s) columna(s) indexada(s) (para eficientar las b�squedas)

-- UNIQUE
-- Impide que se dupliquen valores sobre la columna del �ndice

-- CREATE [UNIQUE] [CLUSTERED | NONCLUSTERED] INDEX idx_<nombre> ON <tabla>(<campos ...>)

create unique nonclustered index idx_correo on clientes(correo)