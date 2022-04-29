USE mydb1;

-- CREATE TABLE : 테이블 만들기
CREATE TABLE Customers 
SELECT * FROM w3schools.Customers;

DESC Customers; -- ㅌㅔ이블 확인
-- DROP TABLE : 테이블 삭제

-- ALTER TABLE : 테이블 수정
-- 컬럼 추가
ALTER TABLE Customers
ADD Email VARCHAR(255);

ALTER TABLE Customers
ADD Email VARCHAR(255) not NULL DEFAULT '이메일없음';

-- 순서 정해서 컬럼 추가 : FIRST, AFTER 등등
ALTER TABLE Customers
ADD Email VARCHAR(255) AFTER ContactName;

-- 컬럼 삭제
ALTER TABLE Customers
DROP COLUMN Email;

-- 컬럼 수정
ALTER TABLE Customers
MODIFY COLUMN Email VARCHAR(20); 
-- 데이터 타입 변경은 지우는 것 만큼 신중하게 해야한다

