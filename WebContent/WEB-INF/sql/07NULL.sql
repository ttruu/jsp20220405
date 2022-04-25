USE w3schools;

SELECT * FROM Employees ORDER BY EmployeeID DESC;

SELECT * FROM Employees WHERE Photo = 'pic013';

-- 조회시 IS NULL
SELECT * FROM Employees WHERE Photo IS NULL;

-- IS NOT NULL 널이 아닌 애들만 
SELECT * FROM Employees WHERE Photo IS NOT NULL;

-- 그룹함수에서 보통 제외됨 (null이)
SELECT COUNT(*) FROM Employees; -- 레코드 수
SELECT count(LastName) FROM Employees;
SELECT count(Photo) FROM Employees;

