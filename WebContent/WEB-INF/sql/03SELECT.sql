USE w3schools;

SELECT * FROM Employees;
SELECT FirstName FROM Employees;
SELECT CustomerName, Address FROM Customers;

-- WHERE : 어떤 Row(RECORD)를 선택할지 결정하는 키워드

-- 예제1: 나라가 멕시코인 고객들 조회
SELECT * FROM Customers
WHERE Country = 'Mexico';

-- 예제2 : 나라가 독일인 고객들 조회
SELECT * 
FROM Customers
WHERE Country = 'Germany';

-- 작은따옴표 : 문자열값
-- 예제3 : 고객ID가 1번인 고객 조회
SELECT * FROM Customers WHERE CustomerID = 1; -- 수형식은 작은 따옴표 안씀, 근데 써도됨
SELECT * FROM Customers WHERE CustomerID = 90;
SELECT * FROM Customers WHERE CustomerID = '1';
SELECT * FROM Customers WHERE Country = Germany; -- 문자형식은 작은 따옴표 꼭 써야함

-- 예제4 : 1번 고객의 이름 조회
SELECT CustomerName From Customers WHERE CustomerID = 1;

SELECT CustomerName, Address, City, PostalCode, Country FROM Customers WHERE CustomerID = 1;

SELECT CustomerName, City, Country, PostalCode FROM Customers WHERE CustomerID = 2;

SELECT * FROM Employees;
SELECT FirstName, lastName, BirthDate FROM Employees WHERE EmployeeID = 1;

SELECT CustomerName, City, Country, PostalCode FROM Customers;

SELECT CustomerName, City, Country, PostalCode FROM Customers WHERE Country='Mexico';

SELECT CustomerName, City, Country FROM Customers WHERE city = 'London';

-- city = ' OR '1'='1
SELECT CustomerName, City, Country FROM Customers WHERE City = '' OR '1'='1';
