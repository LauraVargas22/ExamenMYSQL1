INSERT INTO genre(description) values('Drama'), ('Comedia'), ('Ficcion'), ('Aventura');

INSERT INTO writer(name, birthdate) values('Gabriel Garcia', '1970-03-10'), ('Jorge Isacc', '1976-03-23'), ('Piedad Bonnet', '1945-04-10');

INSERT INTO members(name, n_document, birthdate) values('Laura', 1053443687, '2006-09-22'), ('Pedro', 80030237, '1985-05-01'), ('Valentina', 1087800237, '2002-01-12'), ('Pedro', 1145678905, '2007-06-21');

INSERT INTO bookwriter(id_writer) values('1'), ('2'), ('3');

INSERT INTO books_transaction(id_member, description) values(1, 'préstamo'), (2, 'devolucion'), (3, 'préstamo'), (4, 'devolucion');

INSERT INTO transaction_details(id_transaction, transaction_date) values(1, '2025-03-05'), (2,'2025-01-02');

INSERT INTO publishers(publish_date, place) values('2010-03-10', 'Bogota'), ('2015-05-11', 'Duitama'), ('2012-03-12','Tunja'), ('2018-07-11', 'Guadalupe');

INSERT INTO editor(name, id_publisher) values('Salamandra', 2), ('Satena', 1), ('Penguin', 3), ('Planeta', 4);

INSERT INTO editorDetails(id_editor, edition_date) values(2, '2024-02-01'), (1, '2023-11-24'), (3, '2015-01-20'), (4, '2025-02-20');

INSERT INTO books(title, isbn, status) values('La Mala Hora', 1233, 'prestado'), ('Maria', 1244, 'disponible'), ('Lo Que No Tiene Nombre', 1334, 'disponible'), ('Cien Años de Soledad', 1234, 'prestado');
