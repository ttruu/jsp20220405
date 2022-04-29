USE mydb1;

-- DEFAULT : 값이 명시되지 않았을 때 기본값
CREATE TABLE mytable15 (
	col1 VARCHAR(10),
    col2 VARCHAR(10) DEFAULT 'hello'
);

DESC mytable15;
INSERT INTO mytable15 (col1, col2) VALUES ('abc', 'def');
INSERT INTO mytable15 (col1, col2) VALUES ('abc', null);
INSERT INTO mytable15 (col1) VALUES ('hi'); -- col2에 기본값이 들어감
SELECT * FROM mytable15;

