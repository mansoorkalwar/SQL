/*
  =			Equal					Checks if two values are equal
  <>   =!   Not Equal               Checks if two values are not equal 
  >         Greater than            Checks if a value is greater than another value
  >=        Greater Than Equal to   Checks if a value is greater than or equals to another value
  <         Less Than				Checks if a value is less than another value 
  <=        Less Than Equal to      Checks if a value is less than or equals to another value


  Compare two things


  • Expression Operator Expression -> Condition


  column1    =  column2		first_name = last_name
  column1    =  value		first_name = 'Kalwar'
  function   =  value		UPPER(first_name) = 'John'
  Expression =  value	    prince * quantity = 1000
  subquery   =  value		(select AVG(Score) from Customers) = 300



*/



-- Retrive all customers from Germany
SELECT * FROM Customers
WHERE Country = 'Germany';



-- Retrive all customers who are not from germany
SELECT * FROM Customers
WHERE Country != 'Germany';


-- Retrive all customers with a score greater than 500 
SELECT * FROM Customers
WHERE Score > 500


-- Retrive all customers with score of 500 or more
SELECT * FROM Customers
WHERE Score >= 500



-- Retrive all customers with a score less than 500
SELECT * FROM Customers
WHERE Score < 500;





-- Retrive all customers with a score of 500 or less
SELECT * FROM Customers
WHERE Score <= 500;