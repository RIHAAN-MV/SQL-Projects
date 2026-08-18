CREATE TABLE IF NOT EXISTS Resturant(
    name TEXT,
    neighbourhood TEXT,
    cuisine TEXT,
    review REAL,
    price TEXT,
    health TEXT
    );

    INSERT INTO Resturant (name,neighbourhood,cuisine,review,price,health)VALUES

    ('peter','brooklyn','steak',4.4,'$$$$','A'),
    ('jongro','midtown','korean',3.5,'$$', 'A'),
    ('pocha','midtown','pizza',4.0,'$$$', 'B'),
    ('Lighthouse','queens','chinese',3.9,'$', 'A'),
    ('minca','downtown','american',4.6,'$$$', ''),
    ('marea','chinatown','chinese',3.0,'$$', ''),
    ('Dirty Candy','uptown','italian',4.9,'$$', 'B'),
    ('Di Fara Pizza','Brooklyn','pizza',3.8,'$$', 'A'),
    ('Golden Unicorn','uptown','italian',3.8,'$$', 'A');

    SELECT DISTINCT neighbourhood
    FROM Resturant;

    SELECT DISTINCT cuisine
    FROM Resturant;

    SELECT *
    FROM Resturant
    WHERE cuisine ='chinese';

    SELECT *
    FROM Resturant
    WHERE review>= 4.0;

    SELECT *
    FROM Resturant
    WHERE cuisine = 'italian'
        AND price IN ('$$','$$$');

    SELECT *
    FROM Resturant
    WHERE price = '$$$';

    SELECT *
    FROM Resturant
    WHERE name LIKE '%Candy%';

    SELECT *
    FROM Resturant
    WHERE neighbourhood IN ('midtown','downtown','chinatown');

    SELECT *
    FROM Resturant
    WHERE health = '' OR health IS NULL;

    SELECT *
    FROM Resturant
    ORDER BY review DESC
    LIMIT 4;