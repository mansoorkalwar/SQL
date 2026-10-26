/*


    we have one one search operator

    LIKE = search for a pattern in text



    %   -> Matches zero, one, or many characters
    -   -> Matches exactly one character


*/

-- Find all the customers whose first name starts with 'M'

SELECT * FROM Customers
WHERE FirstName LIKE 'M%';


--  Find all customers whose firsname ends with 'n'
SELECT * FROM Customers
WHERE FirstName LIKE '%n';


-- Find all customers whose first name contains 'r'
SELECT * FROM Customers
WHERE FirstName LIKE '%r%';



-- Find all customers whose first name has 'r' in the third position 
SELECT * FROM Customers
WHERE FirstName LIKE '__r%'