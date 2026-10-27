-- JOIN PRACTICE
-- 1. Show every order with customer name and city.


SELECT
	   c.FirstName,
	   c.City,
	   o.*
FROM Customers AS c
INNER JOIN Orders AS o
ON c.CustomerID = o.CustomerID;