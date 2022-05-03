USE w3schools;

DESC Products;
SELECT * FROM Products;
DESC Categories;
SELECT * FROM Categories;

SELECT * FROM Products JOIN Categories; -- Cartesian product
SELECT * FROM Products JOIN Categories ON Products.CategoryID = Categories.CategoryID;

-- Product테이블과 Suppliers테이블 SupplierID 컬럼이 같은 것끼리 inner join 결과값 도출
SELECT * FROM Products JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID;


-- 별칭(alias)과 같이 사용
SELECT * FROM Products AS p JOIN Suppliers As s ON p.SupplierID = s.SupplierID;
SELECT * FROM Products p JOIN Suppliers s ON p.SupplierID = s.SupplierID;


-- 필요한 컬럼만 노출시키고 싶다
SELECT ProductName, Unit, Price, SupplierName FROM Products p JOIN Suppliers s ON p.SupplierID = s.SupplierID;


-- 중복컬럼명 사용시 테이블명 작성해야함
SELECT ProductName, Unit, Price, s.SupplierID, SupplierName 
FROM Products p JOIN Suppliers s ON p.SupplierID = s.SupplierID;
SELECT p.ProductName, p.Unit, p.Price, s.SupplierID, s.SupplierName 
FROM Products p JOIN Suppliers s ON p.SupplierID = s.SupplierID;


-- 다른 테이블
-- 고객과 공급자가 모두 있는 나라를 조회해라
SELECT DISTINCT Country FROM Customers;
SELECT DISTINCT Country FROM Suppliers;
SELECT * FROM Customers c JOIN Suppliers s ON c.Country = s.Country ORDER BY c.Country;
SELECT DISTINCT c.Country FROM Customers c JOIN Suppliers s ON c.Country = s.Country ORDER BY c.Country;
SELECT DISTINCT s.Country FROM Customers c JOIN Suppliers s ON c.Country = s.Country ORDER BY 1;

-- 참조하지 않아도 INNER JOIN 이 가능하다




