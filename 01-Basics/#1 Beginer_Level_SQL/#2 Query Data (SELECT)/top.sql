/*

 TOP (Limit) = Restict the number of rows returned


*/


-- Retrive only three customers
 SELECT TOP 3 * 
 FROM Customers;


-- Retrive customer with highest score
SELECT TOP 1 * 
FROM Customers
ORDER BY Score DESC;



-- Retrive top 3 customers with highest score
SELECT TOP 3 * 
FROM Customers
ORDER BY Score DESC;



-- Retrive the lowest 2 customers based on the score
SELECT TOP 2 *
FROM Customers
ORDER BY Score ASC;



-- Get the 2 most recent orders
SELECT TOP 2 * 
FROM Orders
ORDER BY OrderDate DESC;
