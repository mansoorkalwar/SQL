/*
	

			We have only one range operator called BETWEEN


				BETWEEN = Checks if a value is within a range


			You need two things


						  Lower Boundry            BETWEEN         Upper Boundry
			<------------------|----------------------------------------|---------------->
					FALSE							TRUE                   FALSE
	

			Everything between those boundries will be true
			Everything outside those boundries will be false



			For Example:

			Lowwer Boundry = 100
			Upper Boundry  = 500


			• The boundries are Inclusive

*/



--- Retrive all customers whose score falls in the range between 100 and 500
SELECT * FROM Customers
WHERE Score BETWEEN 100 AND 500;




-- we can do this same using comparison and logical opertors
SELECT * FROM Customers
WHERE Score >= 100 AND Score <= 500 




-- TIP: Explicit comparisons clearly show that both boundries are included






