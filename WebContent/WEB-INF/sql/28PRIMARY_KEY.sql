USE mydb1;

CREATE TABLE mytable12 (
	col1 VARCHAR(10),
    col2 VARCHAR(10) NOT NULL UNIQUE
);

DESC mytable12;

-- primary key : not null, unique 조합
CREATE TABLE mytable13 (
	col1 VARCHAR(10),
    col2 VARCHAR(10) PRIMARY KEY
);

DESC mytable13;

INSERT INTO mytable13 (col1, col2) VALUES ('a', 'a');
INSERT INTO mytable13 (col1, col2) VALUES ('a', 'b');
INSERT INTO mytable13 (col1, col2) VALUES ('a', 'b'); -- 안됨
INSERT INTO mytable13 (col1, col2) VALUES ('a', null); -- 안됨

SELECT * FROM mytable13;


-- AUTO_INCREMENT : 자동으로 값 증가
CREATE TABLE mytable16 (
	col1 int PRIMARY KEY AUTO_INCREMENT, -- 1부터 자동으로 1씩 증가하는 값 입력해줌
    col2 VARCHAR(10)
);

INSERT INTO mytable16 (col2) VALUES ('abce');
DELETE FROM mytable16 WHERE col1 = 3;
SELECT * FROM mytable16;