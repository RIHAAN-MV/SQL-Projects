CREATE TABLE supplier(
S.NO TEXT PRIMARY KEY,
S.NAME TEXT,
STATUS INTEGER,
CITY TEXT

);

INSERT INTO supplier (SNO,SNAME,STATUS,CITY) VALUES
("S1", "Frisk" , 10 ,"London"),
("S2", "Chara" , 25 ,"Paris"),
("S3","Sans" , 40 , "Washington"),
("S4" ,"Papyrus",30,"Cairo");

SELECT * FROM supplier;
