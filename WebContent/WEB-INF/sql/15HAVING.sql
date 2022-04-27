SELECT * FROM Customers;

SELECT country, count(customerID) count FROM Customers
WHERE count = 6 -- xxxx 안됨 WHERE FROM절 테이블의 각 Row를 연산하기 때문에 안됨!!!!
GROUP BY Country;


SELECT country, count(customerID) 
FROM Customers
GROUP BY Country
HAVING count(CustomerID) > 3; -- HAVING aggregate function 결과를 조건으로 줄 수 있음


SELECT country, count(customerID) count -- 별칭 넣은것
FROM Customers
GROUP BY Country
HAVING count > 3;

-- 가장 적은 고객이 있는 나라들 조회 // 나라랑 수 둘 다 나옴
SELECT Country, count(CustomerID) count
FROM Customers
GROUP BY Country
HAVING count = -- 나라들
(
SELECT count(CustomerID) count
FROM Customers
GROUP BY Country
ORDER BY count ASC
LIMIT 1 -- 가장 적은 고객
);


-- 가장 적은 고객이 있는 나라들 조회
SELECT Country FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) = 
(
	SELECT COUNT(CustomerID) count 
	FROM Customers
	GROUP BY Country
	ORDER BY count
	LIMIT 1
);


-- GROUP BY : 2개 이상의 컬럼 사용 가능(여러 컬럼으로 묶을 수 있다)
SELECT * FROM Orders ORDER BY OrderDate;

-- 날짜별 몇개의 주문이 있는지?
SELECT OrderDate, count(OrderID)
FROM Orders
GROUP BY OrderDate
ORDER BY OrderDate;

-- 날짜별, 직원별로 몇개의 주문이 있는지?
SELECT OrderDate, EmployeeID, count(OrderID)
FROM Orders
GROUP BY OrderDate, EmployeeID
ORDER BY OrderDate, EmployeeID;


-- LEETCODE 1693
# Write your MySQL query statement below
SELECT date_id, 
       make_name, 
       COUNT(DISTINCT lead_id) AS unique_leads, 
       COUNT(DISTINCT partner_id) AS unique_partners
FROM DailySales
GROUP BY date_id, make_name;
