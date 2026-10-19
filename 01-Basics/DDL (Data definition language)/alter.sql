/*

	ALTER = Alter is used when you want to edit the structure of table and change it

	Example:
	Adding new column
	Changing the datatype and anything in the definition of the table

*/


-- Add a new column called email to the persons table
ALTER TABLE Persons
ADD Email VARCHAR(50)




SELECT * FROM Persons;




/*
	ADDING COLUMNS
	The new columns are appended at the end of table by default




	you can not add new column in the middle of other columns
    if you want to do that you have to completly drop the table
	and create from scratch which might be bad if you have data
	inside it


*/



-- Remove the column Pone from the persons table
ALTER TABLE Persons
DROP COLUMN Pone;


