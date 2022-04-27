USE w3schools;

SELECT count(ProductID) FROM Products; -- NULL 은 카운트 하지 않음
SELECT * FROM Employees;

INSERT INTO Employees (LastName, BirthDate, Photo, Notes)
VALUES ('son', '1999-02-18', 'pic1', 'soccer');

SELECT count(LastName) FROM Employees;
SELECT count(FirstName) FROM Employees;

SELECT DISTINCT LastName FROM Employees; -- 중복 제거
SELECT count(DISTINCT LastName) LastName FROM Employees;
SELECT count(DISTINCT LastName) num_of_last_name FROM Employees; -- 별칭 줘서 조회

-- avg : 평균, null 은 무시
SELECT avg(Price) FROM Products; -- NULL 생략
SELECT avg(Price) AS avg_price FROM Products;
SELECT avg(Price) avg_price FROM Products;

-- sum : 합, null 무시
SELECT sum(Price) FROM Products;
SELECT sum(Price) AS sum_price FROM Products;
SELECT sum(Price) AS 가격합계 FROM Products;





