CREATE TABLE IF NOT EXISTS zoo_animal (
    animal_id   INTEGER PRIMARY KEY,
    name        TEXT    NOT NULL,
    species     TEXT    NOT NULL,
    age_years   INTEGER NOT NULL,
    weight_kg   REAL    NOT NULL
);

INSERT INTO zoo_animal VALUES (1, 'Lion','big cat', 5, 190.00);
INSERT INTO zoo_animal VALUES (2, 'tiger','big cat', 3, 190.00);
INSERT INTO zoo_animal VALUES (3, 'elephant','pachydern',12, 190);
INSERT INTO zoo_animal VALUES (4, 'giraffe','big cat', 7, 190.00);
INSERT INTO zoo_animal VALUES (5, 'penguin','bird', 2, 190.00);
INSERT INTO zoo_animal VALUES (6, 'panda','bear', 6, 190.00);
INSERT INTO zoo_animal VALUES (7, 'cheetah','big cat', 4, 190.00);
INSERT INTO zoo_animal VALUES (8, 'rhino','pachydern', 9, 190.00);

SELECT * FROM zoo_animal;

SELECT species FROM zoo_animal;

SELECT DISTINCT species FROM zoo_animal;

SELECT COUNT(DISTINCT species) AS unique_species FROM zoo_animal;

SELECT COUNT(animal_id) AS total_animals FROM zoo_animal;

SELECT COUNT(animal_id) AS older_than_5 FROM zoo_animal WHERE age_years > 5;

SELECT SUM(weight_kg) AS total_weight_kg FROM zoo_animal;

SELECT AVG(age_years) AS avg_age_years FROM zoo_animal;

SELECT
    COUNT(animal_id)        AS total_animals,
    COUNT(DISTINCT species) AS unique_species,
    SUM(weight_kg)          AS total_weight_kg,
    AVG(age_years)          AS avg_age_years
FROM zoo_animal;
