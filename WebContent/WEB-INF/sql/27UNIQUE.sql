USE mydb1;

-- UNIQUE : 해당 컬럼의 값이 중복되면 안됨
CREATE TABLE mytable10 (
	col1 VARCHAR(10),
    col2 VARCHAR(10) UNIQUE
);

DESC mytable10;
INSERT INTO mytable10 (col1, col2) VALUES ('a', 'b');
INSERT INTO mytable10 (col1, col2) VALUES ('c', 'd');
INSERT INTO mytable10 (col1, col2) VALUES ('c', 'e');
INSERT INTO mytable10 (col1, col2) VALUES ('e', 'e'); -- col2는 중복 허용 안됨
INSERT INTO mytable10 (col1, col2) VALUES ('c', null);
INSERT INTO mytable10 (col1, col2) VALUES ('d', null); -- 값이 없는거니까 중복되었다는 표현을 쓸수 없음

SELECT * FROM mytable10;


-- unique , not null 조합
CREATE TABLE mytable11 (
	col1 VARCHAR(10),
    col2 VARCHAR(10) UNIQUE NOT NULL
);
DESC mytable11;


