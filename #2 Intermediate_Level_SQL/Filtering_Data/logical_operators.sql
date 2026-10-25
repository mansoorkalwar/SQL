/*

	Combine two conditions using logical operators


	AND                All conditions must be true
	OR				   At least one condition must be true
	NOT				   (Reverse) Excludes matching rows




*/


-- Retrive all customers who are from the USA AND have a score greater than 500
SELECT * FROM Customers
WHERE Country = 'USA' AND Score > 500; 


-- Retrive all customers who are either from the USA OR have a score greater than 500
SELECT * FROM Customers
WHERE Country = 'USA' OR Score > 500;



-- Retrive all customers with a score NOT less than 500
SELECT * FROM Customers
WHERE NOT Score < 500;
