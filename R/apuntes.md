# Taller Expresiones Regulares

## Nociones generlaes

- Buscar cosas exactas pero también abstractas. Por ejemplo, "Busca 123" o "Busca un número" (digits)



## Buscares de coincidencia

. cualquier caracter, menos un salto de línea
\d cualquier digito
\w cualquier caracter de palabra
\s espacio en blanco
\b límite de palabra

**Mayúsuculas en negación**

\D cualquier no digito
\W cualquier no caracter en palabra
\S no espacios en blanco


## Cuantificadores

? 0 a 1 vez 
+ 1 o más
* 0 o más

{n} "definido"
{n,} "desde"
{n,m} "rango"
{,m} "hasta"

## Anclas 

^ "al inicios"
$ "alfinal"

## Ejemplo

1) "Encuenta 4 dígitos" 

\d{4} 

2) Buscar la palabra programación con y sin tílde

programaci[o|ó]n

# Ocupar en R

## Agrupar 

Se pueden agrupar cosas dentro de una cadena de carácteres

"(Stark), (Arya)"
\1          \2

## Dobles barras
Cuando R lee una barra dice "aquí viene algo especial"
\\d

No así cuando lo escribimos con corchetes
[:digits]


# Preguntas
- Ventajas en relación a paquete base: 1) más corto, 2) filtrar columnas y filas --> se relaciona con filter (columnas y expresión regular)