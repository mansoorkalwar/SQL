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


-- Display the names and prices of products that belong to the Electronics category


select ProductName,Price 
From Products 
where CategoryID in (
	select CategoryID from Categories
	where CategoryName = 'Electronics' 
)


-- Display the product names and prices of products that belong to either the Electronics or Furniture category

select ProductName,Price
from Products
where CategoryID in (
	select CategoryID 
	from Categories 
	where CategoryName in ('Electronics','Furniture')
)



-- Display the names of categories that have at least one product with a price greater than 50,000

select CategoryName
from Categories
where CategoryId In (
	select CategoryID 
	from Products
	where Price > 50000
)


-- Display the product names and prices of products whose price is 
-- greater than the price of every product in the Accessories category


Select ProductName,Price
from Products
where Price > All (
	select Price 
	from Products 
	where (
	select CategoryID 
	from Categories 
	where CategoryName = 'Accessories')
)



select name
from sys.tables


select avg(Salary) as Avg_Salary
from tblGCSALUStaff
where Position in (
	select 
		Position
	from tblGCSALUStaff
	group by Position
	Having Count(*) > 2
)



select count(PaidAmount) as feeCount
from tblFees

-- Display the product names and prices of products
-- whose price is less than every product in the Electronics
-- category


select ProductName,Price
from Products
	where Price <  All (
	select Price 
	from Products
	where CategoryID in (
			select CategoryID 
			from Categories
			where CategoryName = 'Electronics'
		)
)




select top 1 * from Products
Select top 1 * from Categories


