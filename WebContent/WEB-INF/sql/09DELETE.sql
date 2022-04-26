USE w3schools;

select * from Employees;

-- safe mode 해제
SET SQL_SAFE_UPDATES = 0;

delete FROM Employees; -- 모든 레코드 삭제

SELECT * FROM Customers WHERE Country = 'Mexico';
DELETE FROM Customers WHERE Country = 'Mexico';

DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';
SELECT * FROM Customers WHERE CustomerName='Alfreds Futterkiste';

SELECT * FROM Employees;

DESC Employees;

SELECT * FROM Customers;