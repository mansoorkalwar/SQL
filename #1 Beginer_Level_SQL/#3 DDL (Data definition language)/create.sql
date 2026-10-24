/*
	
	DDL = Defines the structure of the database.

	• CREATE
	• ALTER
	• DROP

*/

-- Create a new table called persons with columns:
-- id, person_name, birth_date, and phone


CREATE TABLE Persons (
	ID INT NOT NULL,
	Person_name VARCHAR(50),
	Birth_date DATE,
	Pone VARCHAR(50)
	CONSTRAINT pk_persons PRIMARY KEY(ID)
)


SELECT * FROM Persons