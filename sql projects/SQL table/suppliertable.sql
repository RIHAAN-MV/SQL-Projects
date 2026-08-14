CREATE TABLE supplier(
S.NO TEXT PRIMARY KEY,
S.NAME TEXT,
STATUS INTEGER,
CITY TEXT

);

INSERT INTO supplier (SNO,SNAME,STATUS,CITY) VALUES
("S1", "Sonic" , 10 ,"India"),
("S2", "Knuckles" , 25 ,"Paris"),
("S3","Shadow" , 40 , "London"),
("S4" ,"Tails",30,"Washington");

SELECT * FROM supplier;
