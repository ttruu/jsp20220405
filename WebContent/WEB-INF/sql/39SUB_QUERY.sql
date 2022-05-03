USE w3schools;

-- 주문한적 없는 고객명 조회
-- JOIN
SELECT c.CustomerName FROM Customers c LEFT JOIN Orders o ON c.CustomerID = o.CustomerID WHERE o.OrderID IS NULL ORDER BY 1;
-- SUBQUERY
SELECT CustomerName From Customers WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders) ORDER BY 1;

-- 고객별 주문수
-- join
SELECT c.CustomerName, count(o.OrderID) FROM Customers c 
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID GROUP BY c.CustomerID ORDER BY 2 DESC;
-- subquery
SELECT c.CustomerName, (SELECT count(o.OrderID) FROM Orders o WHERE o.CustomerID = c.CustomerID) NumOfOrders
FROM Customers c ORDER BY 2 DESC;

-- 상품명과 카테고리명 조회
-- JOIN
SELECT p.ProductName, c.CategoryName FROM Products p 
JOIN Categories c ON p.CategoryID = c.CategoryID ORDER BY 1;
-- SUBQUERY
SELECT p.ProductName, (SELECT CategoryName FROM Categories c WHERE c.CategoryID = p.CategoryID) CategoryName 
From Products p ORDER BY 1;


-- 고객도 잇고 공급자도 있는 나라명 조회
-- join
SELECT DISTINCT c.Country FROM Suppliers s JOIN Customers c ON s.Country = c.Country ORDER BY 1;
-- subquery
SELECT DISTINCT Country FROM Customers WHERE Country IN (SELECT Country FROM Suppliers) ORDER BY 1;



-- leetcode 1587

# sub query
SELECT (SELECT name FROM Users u WHERE t.account = u.account) name,
       SUM(t.amount) balance
FROM Transactions t
GROUP BY t.account
HAVING balance > 10000;

# JOIN
SELECT u.name, SUM(t.amount) balance
FROM Users u JOIN Transactions t 
   ON u.account = t.account
GROUP BY u.account
HAVING balance > 10000;



-- leetcode 1407
# sub query
 SELECT name, 
       IFNULL((SELECT SUM(distance) FROM Rides WHERE user_id = Users.id), 0) travelled_distance
 FROM Users
 ORDER BY 2 DESC, 1;

# join
SELECT u.name,
       SUM(IFNULL(r.distance, 0)) travelled_distance
FROM Users u LEFT JOIN Rides r ON u.id = r.user_id
GROUP BY u.id
ORDER BY 2 DESC, 1;



-- leetcode 1965
SELECT e.employee_id
FROM Employees e LEFT JOIN Salaries s
  ON e.employee_id = s.employee_id
WHERE s.employee_id IS NULL

UNION

SELECT s.employee_id
FROM Employees e RIGHT JOIN Salaries s
  ON e.employee_id = s.employee_id
WHERE e.employee_id IS NULL

ORDER BY 1;







