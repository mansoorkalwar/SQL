/*


	INNER JOIN
	
	Returns only matching rows from both tables

	So we want to see the data from table A only if it exist in the table B


	Only common data



	SELECT * 
	FROM Customers
	[Type] JOIN B   
	ON <Condition>


	SELECT * 
	FROM Customers
	Inner JOIN B   
	ON A.key = B.key




	If you don't give type of join the default will be inner join

	Best practice is always mention type of join


*/



-- Get all customers along with their orders,
-- but only those


SELECT * FROM Customers AS c
INNER JOIN Orders AS o
ON  C.CustomerID = o.CustomerID