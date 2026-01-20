
# Universe Database (PostgreSQL)


Este repositorio contiene el archivo **universe.sql**, un respaldo de una base de datos PostgreSQL creado como parte de la **Relational Database Certification de freeCodeCamp**.

El archivo permite recrear completamente la base de datos `universe`, incluyendo su estructura, relaciones y datos.




## Uso

Para utilizar este archivo es necesario tener PostgreSQL instalado en el sistema.

    1. Descarga el archivo `universe.sql` desde este repositorio.
    2. Abre una terminal o consola del sistema.
    3. Asegúrate de tener acceso a PostgreSQL y al comando `psql`.
    4. Ubícate en el directorio donde se encuentra el archivo descargado.
    5. Ejecuta el siguiente comando:
                      psql -U postgres < universe.sql

## Notas


- El archivo fue generado utilizando pg_dump con la opción --inserts.
- Incluye la creación de la base de datos, tablas, claves primarias y foráneas.


