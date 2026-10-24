/*

    • DML stands for Data Manipulation Language.

    DML refers to SQL commands used to insert, modify, and delete data
    stored in database tables.

    Main DML Commands:
        • INSERT
        • UPDATE
        • DELETE

    

INSERT is used to add new rows (records) to a table.

You can use INSERT when:
    • The table is empty.
    • The table already contains data and you want to add more rows.

New rows are added to the existing table.

-------------------------------------------------------------------------------
                        INSERT DATA INTO A TABLE
-------------------------------------------------------------------------------

There are two common ways to insert data:

1. Manaully entry: Specify the column names and provide values.
2. Insert data using Select from source table to target table



It is recommended to specify the column names explicitly.

*/

-- Insert new customers

INSERT INTO Customers
    (CustomerID, FirstName, LastName, Country, Score)
VALUES
    (6, 'Mansoor', 'Ahmed', 'Pakistan', 200),
    (7, 'Mehdi', 'Hassan', 'India', NULL);


/*
IMPORTANT RULES:

1. The number of columns must match the number of values.

2. Values must be provided in the same order as the specified columns.

3. Values must have compatible data types.

4. Values must satisfy the table's constraints.

5. NULL can be inserted into a column only if the column allows NULL.



If no column names are specified, SQL expects a value for every column
in the table, and the values must follow the table's column order.

Example:

    INSERT INTO Customers
    VALUES (6, 'Mansoor', 'Ahmed', 'Pakistan', 200);

IMPORTANT:
This method is less recommended because it depends on the exact order
of columns in the table.

-------------------------------------------------------------------------------
                            COMMON MISTAKE
-------------------------------------------------------------------------------

Columns and values must be in the same order.

For example:
*/

INSERT INTO Customers
    (CustomerID, FirstName, LastName, Country, Score)
VALUES
    (8, 'Afghanistan', 'Soomro', 'Abbas', 200);


/*
The database may accept the statement even though the data is logically
incorrect.

Why?

SQL Server checks things such as:

    • Data types
    • Number of columns and values
    • Constraints

It does NOT automatically understand the meaning of your data.

For example:

    FirstName = 'Afghanistan'
    LastName  = 'Soomro'
    Country   = 'Abbas'

If all of these columns are VARCHAR and satisfy the constraints,
SQL Server may accept the data.

This is why you must make sure that the values are in the correct order.







      NOTE:
      Columns not included in INSERT become NULL (Unless a default or constraint exists)


*/

SELECT * FROM Customers;


INSERT INTO Customers (CustomerID,FirstName,Country)
VALUES (9,'Touseef','India')






/*

Insert data into table using SELECT

From source table to target table

first we write query to retrive data from source table that we want to insert into target table

then we just insert into target table

*/


INSERT INTO Customers(CustomerID,FirstName,LastName,Country,Score)
SELECT 
SUBSTRING(StdRegNo,11,13),
StdName,
Null,
'Pakistan',
NULL
FROM tblStudents
WHERE SUBSTRING(StdRegNo,11,13) > 10


/*

I wrote this where statement because from 1 to 9 CustomerID was already assigned this code is just for practice


    Now you might say but the column names are not matching with column names of target table
    well the database does not care about that as long as the result of the data is matching

    but you can give column names using AS.


*/
SELECT * FROM Customers;
