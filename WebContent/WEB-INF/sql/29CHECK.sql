USE mydb1;

-- check : 입력되는 값을 검사
CREATE TABLE mytable14 (
	col1 int, 
    col2 int CHECK (col2 > 0)
);

DESC mytable14;
INSERT INTO mytable14 (col1, col2) VALUES (3, 3);
INSERT INTO mytable14 (col1, col2) VALUES (3, -3); -- 안됨
INSERT INTO mytable14 (col1, col2) VALUES (-3, 3);

SELECT * FROM mytable14;

-- check 확인 방법
show CREATE TABLE mytable14;