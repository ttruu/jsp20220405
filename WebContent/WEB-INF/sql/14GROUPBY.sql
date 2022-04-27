
SELECT * FROM Customers;
SELECT count(customerID) FROM Customers;
SELECT count(customerID) FROM Customers GROUP BY Country;
SELECT Country, count(customerID) FROM Customers GROUP BY Country;

SELECT Country, count(customerID) count
FROM Customers 
GROUP BY Country 
ORDER BY count, Country;

DESC Customers;
INSERT INTO Customers(CustomerName, City) VALUES ('son', 'seoul');

-- 가장 많은 고객이 있는 도시를 조회
SELECT City, count(CustomerID) count 
From Customers 
GROUP BY City 
HAVING count = 
(
	SELECT COUNT(CustomerID) count
	FROM Customers
	GROUP BY City
	ORDER BY count DESC
	LIMIT 1
);
