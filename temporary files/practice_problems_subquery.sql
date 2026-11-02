SELECT name
FROM sys.tables;


SELECT TOP 1 * FROM Categories;
SELECT TOP 1 * FROM Products;

-- List the name of all products whose price is greater than avg price of all products
select ProductName 
from Products 
WHERE Price > (select avg(Price) from Products)
