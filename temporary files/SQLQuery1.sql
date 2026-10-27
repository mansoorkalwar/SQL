SELECT 
	c.CustomerID,
	FirstName,
	Country,
	OrderDate
FROM Customers as c
LEFT JOIN Orders as o
On c.CustomerID = o.CustomerID



SELECT top 5 * FROM Customers



SELECT 
	OrderStatus,
	SUM(Quantity) as TotalProducts
FROM Orders
GROUP BY OrderStatus
ORDER BY SUM(Quantity) DESC;



