/*

	Distinct = Removes duplicates ( Repeated Values )

	It make sure that each value appears only once


	Syntax and Execution order

2.	SELECT
3.  DISTINCT
		Country
1.	FROM Customer;










	Bad Habit with Distinct:
	Don't use DISTINCT unless it's necessary; it can slow down your query


	for Example:
	           Some people use distinct with ID column

*/



-- Return unique list of all countries

SELECT DISTINCT
	Country
FROM Customers;

