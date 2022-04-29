USE mydb1;

-- CHAR : 고정길이 문자열 
-- java.lang.string
CREATE TABLE MyTable4 (
	col1 CHAR,
    col2 CHAR(1),
    col3 CHAR(2),
    col4 CHAR(5)
);

DESC MyTable4;

INSERT INTO MyTable4 (col1, col2, col3, col4)
VALUES ('a', 'b', 'cd', 'abcde');

INSERT INTO MyTable4 (col1)
VALUES ('aa'); -- CHAR SIZE가 1이기 때문에 안됨

INSERT INTO MyTable4 (col3)
VALUES ('a'); -- 문자는 1개지만 공간은 2개를 차지하는 것

INSERT INTO MyTable4 (col4)
VALUES ('OPOPO');

INSERT INTO MyTable4 (col4)
VALUES ('3글자'); -- 되지만 5개 공간 차지

-- 트림 (TRIM) disable
SET sql_mode = 'PAD_CHAR_TO_FULL_LENGTH';
SELECT * FROM MyTable4;

-- VARCHAR : 가변길이
CREATE TABLE MyTable5 (
	col1 CHAR(10),
    col2 VARCHAR(10)
);

-- 테이블 지우기 (주의해서 사용하세요)
DROP TABLE MyTable5;

SELECT * FROM MyTable5;
-- a         
-- a
INSERT INTO MyTable5 (col1, col2)
VALUES ('a', 'a');
INSERT INTO MyTable5 (col2)
VALUES ('0123456789');
INSERT INTO MyTable5 (col2)
VALUES ('01234567890'); -- 되는데 짤림 또는 안됨 (주의해서 사용하세요)
INSERT INTO MyTable5 (col2)
VALUES ('abcdefghijklmn'); -- 되는데 짤림 또는 안됨 (주의해서 사용하세요)