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

![image](https://user-images.githubusercontent.com/44008977/122305630-d8bf5480-cecc-11eb-94ab-37f7b7ead5eb.png)

**Solución**
Se identifica que hay 2 registros
![image](https://user-images.githubusercontent.com/44008977/122304685-3c488280-cecb-11eb-8e37-ec4fa56d96b9.png)

