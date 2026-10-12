/*

Group By = Combines rows with the same value

ᵒ Aggregates a column by an other column

For Example: Total Score by country






	Synatax and order of execution

3.	SELECT
		Country,     -> Category
		Sum(Score)   -> Aggregatation
1.	From Customers
2.	Group By Country



• EXAMPLE:

Country       score
Germany       350
USA           900
USA           750
USA           NULL
Germany       500

•  RESULT:

Country       (No column name)
Germany       850
USA           1650




  AS (ALIAS):
• Shorthand name (Lable) assigned to a column or table in a query

	ᵒ This thing exists on in this query
	ᵒ You are not renaming anything in the database
	ᵒ And you can not use it in any other query
	ᵒ It is something that is just known inside this query only for you results
	ᵒ By using AS keyword you can rename any column
	ᵒ The non aggregated columns that you adding in the SELECT must be mentioned as well in GROUP BY



Group By Rule:
• All columns in the SELECT must be either aggregated or included in the GROUP BY



*/


			-- GROUP BY TASKS --

-- find the total score for each country
SELECT 
	Country,
	SUM(Score) as TotalScore
FROM Customers
GROUP BY Country;



-- Find total score and total number of customers in each country
SELECT
	Country,
	SUM(Score) as Total_Score,
	COUNT(CustomerID) as Total_Customers
FROM Customers
GROUP BY Country;



