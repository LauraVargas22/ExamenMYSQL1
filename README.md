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
Buscar libros por género
```sql
SELECT title
FROM books
WHERE id_genreBook = '1';
```
Obtener información de un libro por ISBN
```sql
SELECT title, isbn, id_bookWriter
FROM books
WHERE isbn = '1233';
```
Contar el número de libros en la biblioteca
```sql
SELECT COUNT(id) AS Libros
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
Obtener todos los libros de un autor específico
```sql
SELECT books.title, books.isbn, writer.name, bookwriter.id_writer
FROM bookwriter
INNER JOIN books ON bookwriter.id = books.id_bookWriter
INNER JOIN bookwriter ON writer.id = bookwriter.id_writer
WHERE writer.name = 'Gabriel Garcia';
```
Listar todas las ediciones de un libro
```sql
SELECT books.title, editorDetails.edition_date
FROM editorDetails
INNER JOIN books ON editorDetails.id = books.id_editor_details
WHERE books.title = 'Cien Años de Soledad';
```
Obtener la última edición de un libro
```sql
SELECT books.title, editorDetails.edition_date
FROM editorDetails
INNER JOIN books ON editorDetails.id = books.id_editor_details
WHERE books.title = 'Cien Años de Soledad'
ORDER BY editorDetails.edition_date DESC
LIMIT 1;
```
Contar cuántas ediciones hay de un libro específico
```sql
SELECT COUNT(id_editor_details) AS Ediciones
FROM books;
```
Listar todas las transacciones de préstamo
```sql
SELECT description
FROM books_transaction
WHERE description = 'préstamo';
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
SELECT name, n_document, birthdate
FROM members
WHERE name = 'Laura';
```

Obtener las transacciones de un miembro específico
```sql
SELECT members.name, books_transaction.id AS id_bookTransactions
FROM members
INNER JOIN books_transaction ON members.id = books_transaction.id_member;
```
Listar todos los libros y sus autores
```sql
SELECT books.title, writer.name, bookwriter.id_writer
FROM books
INNER JOIN bookwriter ON books.id_bookWriter = bookwriter.id_writer
INNER JOIN bookwriter ON writer.id = bookwriter.id_writer
ORDER BY name ASC;
```
Obtener el historial de préstamos de un libro específico
```sql
SELECT title, isbn, id_booksTransaction
FROM books
WHERE title = 'Cien Años de Soledad';
```
Contar cuántos libros han sido prestados en total
```sql
SELECT COUNT(id_booksTransaction) AS Libros_Prestados
FROM books_transaction
INNER JOIN books ON books_transaction.id = books.id_booksTransaction
WHERE description = 'préstamo';
```
Listar todos los libros junto con su última edición y estado de disponibilidad
```sql
SELECT books.title, books.status, editorDetails.edition_date
FROM editorDetails
INNER JOIN books ON editorDetails.id = books.id_editor_details
ORDER BY editorDetails.edition_date DESC
LIMIT 1;
```
