# LIBRARY CAMPUS
Por medio de este proyecto se permite organizar y administrar
eficientemente la información relacionada con los libros, autores, publicaciones y las transacciones realizadas por los miembros.

## CONSULTAS
Listar todos los libros disponibles
```sql
SELECT title, status, id
FROM books
WHERE status = 'disponible';
```
Obtener información de un libro por ISBN
```sql
SELECT title, isbn, id_bookWriter
FROM books
WHERE isbn = '1234567';
```
Contar el número de libros en la biblioteca
```sql
SELECT COUNT(id)
FROM books;
```
Listar todos los autores
```sql
SELECT name
FROM writer;
```
Buscar autores por nombre
```sql
SELECT name
FROM writer
WHERE name = 'Gabriel Garcia';
```
Obtener los libros prestados actualmente
```sql
SELECT title
FROM books
WHERE status = 'prestado';
```
Listar todos los miembros de la biblioteca
```sql
SELECT name, id
FROM members;
```

Buscar un miembro por nombre:
```sql
SELECT name
FROM members
WHERE name = 'Laura';
```
