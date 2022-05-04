USE w3schools;

SELECT * FROM Orders;

SELECT o.OrderDate, c.CustomerName, o.EmployeeID FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID WHERE o.OrderDate = '1996-07-04';


-- 1996-07-04에 주문한 고객의 이름과, 처리한 직원의 이름
SELECT o.OrderDate, c.CustomerName, concat(FirstName, '', LastName)EmployeeName
FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID 
			  JOIN Employees e ON o.EmployeeID = e.EmployeeID
WHERE o.OrderDate = '1996-07-04';


-- 1996-07-04 의 주문을 처리한 직원명과 배송자명 조회
-- Orders Employees Shippers
SELECT o.OrderDate, concat(FirstName, '', LastName) EmployeeName, s.ShipperName
FROM Orders o JOIN Employees e ON o.EmployeeID = e.EmployeeID
			  JOIN Shippers s ON o.ShipperID = s.ShipperID
WHERE o.OrderDate = '1996-07-04';


-- 1996-07-04에 주문한 고객과 처리한 직원, 배송한 배송자명
-- Orders, Customers, Employees, Shippers
SELECT o.OrderDate, c.CustomerName, concat(FirstName, '', LastName) EmployeeName, s.ShipperName
FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID 
			  JOIN Employees e ON o.EmployeeID = e.EmployeeID
			  JOIN Shippers s ON o.ShipperID = s.ShipperID
WHERE o.OrderDate = '1996-07-08';


-- 1996-07-04에 주문한 상품명
-- OrderDetails, Orders, Product
SELECT o.OrderDate, p.ProductName, d.Quantity, p.Price, (d.Quantity * p.Price) total
FROM OrderDetails d JOIN Orders o ON d.OrderID = o.OrderID 
					JOIN Products p ON d.ProductID = p.ProductID
WHERE o.OrderDate = '1996-07-04';


-- 1996-07-08에 각 고객의 주문 총액
-- orderdetails products orders customers 
SELECT o.OrderDate, c.CustomerName, p.ProductName, sum(d.Quantity * p.Price) total
FROM Orders o JOIN OrderDetails d ON o.OrderID = d.OrderID
			  JOIN Products p ON d.ProductID = p.ProductID
              JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE o.OrderDate = '1996-07-08'
GROUP BY c.CustomerID;


-- 여기부터 못함 이따 복습 ㄱㄱ
-- 1996년 가장 많은 주문을 받은 직원
-- 1996년 직원별 처리한 주문 총 금액을 조회 (금액이 높은 -> 낮은)
-- product orderdetauls
DESC Orders;
SELECT * 
FROM Employees e JOIN Orders o ON e.EmployeeID = o.EmployeeID


WHERE OrderDate BETWEEN '1996-01-01' AND '1996-12-31';		 



