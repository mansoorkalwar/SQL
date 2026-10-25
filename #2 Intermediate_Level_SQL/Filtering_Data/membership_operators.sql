/*

	IN        =      Checks if a value exists in a list
	NOT IN    =      Not in the list, It will reverse the IN




	for example:  there is list ('Germany','USA')
	Here germany and USA are the memebers of list


	Now if you use IN Operator SQL go and check values of
	countries whether it is in the list or not
 
*/



-- Retrive all customers from either Germany OR USA
SELECT * FROM Customers
WHERE Country IN ('Germany','USA');



-- We can also write this query using OR but it is not good practice
SELECT * FROM Customers
WHERE Country = 'Germany' OR Country = 'USA';



/*	


		Tip:
		Use IN instead of OR for multiple values in the same column
		to simplify SQL


*/




-- Retrive all customers from who are not from Germany OR USA
SELECT * FROM Customers
WHERE Country NOT IN ('Germany','USA');