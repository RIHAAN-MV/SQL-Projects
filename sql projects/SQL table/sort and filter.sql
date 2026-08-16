CREATE TABLE IF NOT EXISTS book (
    book_id     INTEGER PRIMARY KEY,
    title       TEXT    NOT NULL,
    genre       TEXT    NOT NULL,
    rating      REAL    NOT NULL,
    pages       INTEGER NOT NULL,
    pub_year    INTEGER NOT NULL
);

INSERT INTO book VALUES (1, 'DRAGON QUEST', 'FANTASY', 9.2,312,2021);
INSERT INTO book VALUES (2, 'Code Wizards', 'SCI-FI', 8.5,280,2020);
INSERT INTO book VALUES (3, 'OCEAN DEEP', 'ADVENTURE', 7.8,195,2022);
INSERT INTO book VALUES (4, 'STAR Rangers', 'SCI-FI', 9.5,340,2019);
INSERT INTO book VALUES (5, 'forest SECRETS','FANTASY', 8.1,228,2023);
INSERT INTO book VALUES (6, 'Robot City', 'SCI-FI', 7.2,260,2021);
INSERT INTO book VALUES (7, 'tIME juMPERS','ADVENTURES',9.0,175,2022);
INSERT INTO book VALUES (8, 'MAGIC Academy', 'FANTASY', 9.9,398,2020);

SELECT * FROM book;

SELECT title,rating FROM book ORDER BY rating ASC;

SELECT title,rating FROM book ORDER BY rating DESC;

SELECT title,rating,genre FROM book ORDER BY genre DESC, rating DESC;


SELECT title,rating FROM book ORDER BY rating DESC LIMIT 3;

SELECT title,pub_year FROM book ORDER BY pub_year ASC LIMIT 5;


SELECT genre,COUNT(*) AS book_count FROM book GROUP BY genre;

SELECT genre,SUM(pages) AS total_pages, AVG(rating) AS ovg_rating FROM book ORDER BY rating DESC;