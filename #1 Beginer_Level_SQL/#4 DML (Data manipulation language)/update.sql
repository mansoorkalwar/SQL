/*


	Update = We use update when we want to change the 
			 content of already existing rows
	


   Note: Always use where to avoid updating all rows unintentionally


   Caution:
   Without a WHERE, all rows will be updated

*/




-- BEST PRACTICE
-- Check with SELECT before running UPDATE to avoid updating the wrong data
SELECT * FROM Customers
WHERE CustomerID = 6


-- Change the score of customer 6 to 0
UPDATE Customers
SET Score = 0
WHERE CustomerID = 6





-- Change the score of customer with ID 11 to 0 and update the country to UK

SELECT * FROM Customers
WHERE CustomerID = 11


UPDATE Customers
SET Score = 0,
	Country = 'UK'
WHERE CustomerID = 11






-- Update all customers with a Null score by setting their score to 0
SELECT * FROM Customers
WHERE Score IS NULL;


UPDATE Customers
SET Score = 0
WHERE Score IS NULL;





