USE mydb1;

CREATE TABLE MyTable8 (
	col1 DATE, -- getDate
    col2 DATETIME -- =
);
INSERT INTO MyTable8 (col1) VALUES ('2022-04-28');
INSERT INTO MyTable8 (col2) VALUES ('2022-04-28 11:12:13');

-- íėŽėę° now();
SELECT now();
INSERT INTO MyTable8 (col1, col2) VALUES (now(), now());
SELECT * FROM MyTable8;