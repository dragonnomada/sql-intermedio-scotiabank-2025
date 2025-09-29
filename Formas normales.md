# Formas normales

![scotiabank](https://mma.prnewswire.com/media/1004365/Scotiabank_Scotiabank_delivers_Ultimate_value_and_rewards_with_t.jpg?p=facebook)

> **Curso de SQL Intermedio para Scotiabank**
> 
> Alan Badillo Salas

## 1FN - Tabla bien estructurada

1. No se permiten valores multivaluados (valores múltiples dentro de un registro y una columna)
2. No se permiten campos repetitivos (columnas con información que pueda crecer)
3. Cada registro en un campo debe ser atómico (valores indivisibles)

## 2FN - Sin dependencias parciales en claves compuestas

1. Se encuentra en la **1FN**
2. Contiene una clave primaria compuesta
3. Los campos que no son parte de la clave primaria dependen de todos los campos de la clave primaria (no solo de una parte de la clave primaria)

## 3FN - Sin dependencias transitivas

1. Se encuentra en la **2FN**
2. Ningún campo depende de otro campo no clave

## BCFN - Tablas con superclaves

1. Se encuentra en la **3FN**
2. Las transiciones funcionales se dividen en trablas independientes (`X → Y → Z` se convierte a la tabla `X → Y` y la tabla `Y → Z`)

## 4FN - Sin dependencias multivaluadas

1. Se encuentra en la **BCFN**
2. Si las combinaciones de conjuntos de campos respecto a la clave primaria se repiten, entonces la interdependencia se divide.

> Ejemplo

```txt
 ID  A       B
---------------
 x   1       1
 x   1       2
 x   2       1
 x   2       2

 ID A
------
 x  1
 x  2

 ID B
------
 x  1
 x  2
```

