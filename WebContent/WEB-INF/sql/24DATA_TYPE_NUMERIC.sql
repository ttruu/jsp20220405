USE mydb1;

CREATE TABLE MyTable6 (
	col1 int, -- 사이즈 지정할 필요 없다
    col2 int(3)
);

INSERT INTO MyTable6 (col1)
VALUES (23232323232); -- 최대, 최소값 사이만 가능

INSERT INTO MyTable6 (col1)
VALUES (3333);

INSERT INTO MyTable6 (col2)
VALUES (999);

INSERT INTO MyTable6 (col2)
VALUES (9999); -- 사이즈 지정할 필요 없다
INSERT INTO MyTable6 (col2)
VALUES (3.14);

SELECT * FROM MyTable6;

-- DEC : 소수가 있는 수
-- DEC(size, d) : (총길이, 소수점 이하 길이)

CREATE TABLE MyTable7 (
	col1 DEC(3, 2),
    col2 DEC(5, 1)
);

INSERT INTO MyTable7 (col1) VALUES (3.14);
INSERT INTO MyTable7 (col1) VALUES (13.14);
INSERT INTO MyTable7 (col2) VALUES (12345.12); -- 잘리고 다르게 계산돼서 올라감
INSERT INTO MyTable7 (col2) VALUES (123.12);
SELECT * FROM MyTable7;
