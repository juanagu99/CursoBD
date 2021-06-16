# CursoBD

### NORMALIZACIÓN
Primera forma normal (1FN):
- Todos los atributos llave están definidos.
- No hay grupos repetidos en la tabla. Cada fila/columna contiene un solo valor, no un conjunto de ellos.
- Todos los atributos son dependientes de la llave primaria.
- Todos los atributos son atómicos. Un atributo es atómico si los elementos del dominio son simples e indivisibles.
- No debe existir variación en el número de columnas.
- Los campos no clave deben identificarse por la clave (dependencia funcional).
- Debe existir una independencia del orden tanto de las filas como de las columnas; es decir, si los datos cambian de orden no deben cambiar sus significados.

En resumen en la 1FN se deben de identificar si hay grupos de repeticón que se de sobre el mismo registro

**Ejemplo:**
Teniendo en cuenta la siguiente tabla, pasarla a 1FN

![image](https://user-images.githubusercontent.com/44008977/122304084-428a2f00-ceca-11eb-8ddf-b141bb00e66e.png)
