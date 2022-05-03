USE w3schools;

SELECT * FROM Products;


-- 각 카테고리별 상품 수
SELECT CategoryID, count(ProductID) FROM Products GROUP BY CategoryID;
SELECT c.CategoryID, c.CategoryName, count(ProductID) FROM Products p JOIN Categories c ON p.CategoryID = c.CategoryID GROUP BY c.CategoryID;


-- 고객별 주문건 수 
-- 조회컬러명(고객명, 주문수)
-- 단, 주문하지 않은 고객은 나오지 않음
SELECT c.CustomerID, c.CustomerName, count(o.OrderID) FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID GROUP BY c.CustomerID ORDER BY 2 DESC;







