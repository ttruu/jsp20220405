USE w3schools;

SELECT * FROM Customers ORDER BY CustomerID DESC;

INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (92, 'Donald', 'President', 'New York', 'Seattle', '000000', 'USA');

INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES (93, 'Son','Heung-min','Tottenum','London','1111','UK');

-- 모든 컬럼에 데이터 입력시 컬럼명 생략 가능 
INSERT INTO Customers
VALUES (94, 'Cha', 'Bum', 'BundesLiga', 'Köln', '2233', 'Germany');

-- DESC : 테이블 shem 조회(DESCRIBE)
DESC Customers;

-- auto_increment 칼럼은 insert 할때 값 생략 가능
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Oscar', 'Isaac', 'london', 'London', 'B-999', 'UK');

-- 순서가 섞여도 상관없다 
INSERT INTO Customers (Country, PostalCode, City, Address, ContactName, CustomerName)
VALUES ('USA', 'A112', 'Seattle', 'Hotel', 'Rap Monster', 'RM');

SELECT * FROM Employees ORDER BY EmployeeID DESC;
DESC Employees;
INSERT INTO Employees (LastName, FirstName, BirthDate, Photo, Notes)
VALUES ('young-mu', 'heo', '1996-01-23', 'EmPiD11.pic', 'ddong');

-- 모든 칼럼을 나열하지 않아도 됨
INSERT INTO Employees (LastName, FirstName, BirthDate, Notes)
VALUES ('ex', 'ex', 'ex', 'ex'); -- 열을 생략하면 null로 남게됨

-- NULL : 값이 없다
-- INSERT 시 NULL 명시 가능
INSERT INTO Employee (LastName, FirstName, BirthDate, Photo, Notes)
VALUES ('ex', 'ex', 'ex', null, 'ex');