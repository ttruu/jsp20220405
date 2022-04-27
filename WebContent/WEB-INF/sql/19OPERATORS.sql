-- 논리연산
-- = : 같다
SELECT * FROM Customers
WHERE Country = 'Germany';

-- > > 크다, < 작다, >= 크거나 같다, <= 작거나 같다

-- <> , != 다르다
SELECT * FROM Customers
WHERE Country <> 'Germany';
SELECT * FROM Customers
WHERE Country != 'Germany';

-- 산술연산 ( +, -, *, /)
SELECT 3 + 5;
SELECT 3 - 5;
SELECT 3 * 5;
SELECT 3 / 5;

SELECT * FROM Products ORDER BY Price;
-- min 2.5
-- max 263.5

-- 가장 높은 가격과 가장 낮은 가격의 차이
SELECT max(Price) - min(Price) AS 가격차
FROM Products;

-- 문자열 연결 연산 : CONCAT 함수 사용
SELECT CustomerName, concat(Country, ' ', City, ' ', Address) AS Address FROM Customers;
