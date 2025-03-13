CREATE TABLE IF NOT EXISTS genre(
    id INT PRIMARY KEY AUTO_INCREMENT,
    description VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS genre_book(
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_genre INT,
    CONSTRAINT id_genre_FK FOREIGN KEY (id_genre) REFERENCES genre(id)
);

CREATE TABLE IF NOT EXISTS writer(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(25),
    birthdate DATE
);

CREATE TABLE IF NOT EXISTS bookwriter(
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_writer INT,
    CONSTRAINT id_writer_FK FOREIGN KEY (id_writer) REFERENCES writer(id)
);

CREATE TABLE IF NOT EXISTS members(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(25),
    n_document INT,
    birthdate DATE
);

CREATE TABLE IF NOT EXISTS books_transaction(
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_member INT,
    description VARCHAR(20),
    CONSTRAINT id_member_FK FOREIGN KEY (id_member) REFERENCES members(id)
);

CREATE TABLE IF NOT EXISTS transaction_details(
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_transaction INT,
    transaction_date DATE,
    CONSTRAINT id_transaction_FK FOREIGN KEY (id_transaction) REFERENCES books_transaction(id)
);

CREATE TABLE IF NOT EXISTS publishers(
    id INT PRIMARY KEY AUTO_INCREMENT,
    publish_date DATE,
    place VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS editor(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(40) UNIQUE,
    id_publisher INT,
    CONSTRAINT id_publisher_FK FOREIGN KEY (id_publisher) REFERENCES publishers(id)
);

CREATE TABLE IF NOT EXISTS editorDetails(
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_editor INT,
    edition_date DATE,
    CONSTRAINT id_editor_FK FOREIGN KEY (id_editor) REFERENCES editor(id)
);

CREATE TABLE IF NOT EXISTS books(
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50) UNIQUE,
    id_genreBook INT,
    isbn INT,
    status VARCHAR(25),
    id_bookWriter INT,
    id_editor_details INT,
    id_booksTransaction INT,
    CONSTRAINT id_booksTransaction FOREIGN KEY (id_booksTransaction) REFERENCES books_transaction(id),
    CONSTRAINT id_editor_details_FK FOREIGN KEY (id_editor_details) REFERENCES editorDetails(id),
    CONSTRAINT id_bookWriter_FK FOREIGN KEY (id_bookWriter) REFERENCES bookwriter(id),
    CONSTRAINT id_genreBook_FK FOREIGN KEY (id_genreBook) REFERENCES genre_book(id)
);



