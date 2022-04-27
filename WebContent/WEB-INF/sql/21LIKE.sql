
SELECT * FROM Employees;

-- LIKE : 유사한.. ~~ 같은 의 의미
-- '_' : 하나의 문자

SELECT * FROM Employees WHERE Photo LIKE 'EmpID_.pic';

-- '%' : 0 또는 1 또는 여러문자

SELECT * FROM Employees WHERE LastName LIKE 'd%';
SELECT * FROM Employees WHERE LastName LIKE '%n';

SELECT * FROM Employees WHERE LastName LIKE '%n%';

SELECT * FROM Employees WHERE LastName LIKE '%o%' OR FirstName LIKE '%o%';

SELECT * FROM Customers
WHERE CustomerName NOT LIKE 'a%' ORDER BY CustomerName;