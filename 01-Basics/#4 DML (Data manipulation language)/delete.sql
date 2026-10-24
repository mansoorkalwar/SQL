/*

	DELETE = we use DELETE command to remove already existing rows in a table


	

	Note:
	Always use where to avoid Deleting all rows unintentionally



	• This is more risky than UPDATE





	CAUTION:
	Without a WHERE, all rows will be updated!



	BEST PRACTICE:
	Check with SELECT before running DELETE to avoid deleting the wrong data
*/



-- Delete all customers with an ID greater than 40
SELECT * FROM Customers
WHERE CustomerID > 40


DELETE FROM Customers
WHERE CustomerID > 40




-- Delete all data from persons table

DELETE FROM persons;


/*

   TRUNCATE:
   Clears the whole table at once without checking or logging


   TRUCATE works same like this
   DELETE FROM persons;


   But Why I like to use TRUNCATE
   Because it is way faster than delete if you have large tables
   the delete command gonna be really slow because with the delete
   there is alot of things happening behind the scenes. There is like 
   logs and protocols but if you are using truncate the database
   going to skip all those extra stuff and it's going to be very fast



   After running this command
   TRUNCATE TABLE persons;



   You will receive this result:
   Commands completed successfully.

   instead of 9 rows affacted 
   thats why this is way faster then delete
*/


TRUNCATE TABLE persons;



SELECT * FROM persons;