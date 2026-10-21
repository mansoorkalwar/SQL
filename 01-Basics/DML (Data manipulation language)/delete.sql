/*

	DELETE = we use DELETE command to remove already existing rows in a table




	Note:
	Always use where to avoid Deleting all rows unintentionally



	CAUTION:
	Without a WHERE, all rows will be updated!

*/



-- Delete all customers with an ID greater than 40
SELECT * FROM Customers
WHERE CustomerID > 40


DELETE FROM Customers
WHERE CustomerID > 40
