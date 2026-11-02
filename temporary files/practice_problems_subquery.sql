SELECT name
FROM sys.tables;




-- List the name of all products whose price is greater than avg price of all products
select ProductName 
from Products 
WHERE Price > (select avg(Price) from Products)



-- Display the names of categories that have more than 2 products


SELECT CategoryName
from Categories
where ()



Select CategoryName from Categories
where CategoryID IN (select CategoryID from Categories)

SELECT TOP 1 * FROM Categories;
SELECT TOP 2 * FROM Products;

--	if Categories table contains coloumns: CategoryID and CategoryName
--	Products table contains columns: ProductID,ProductName,CategoryID,Price
--	then Find the category names that have more than 2 products.

select CategoryName from Categories
where CategoryID in (
	select
		CategoryID
	from Products
	Group BY CategoryID
	Having Count(*) > 2
)
