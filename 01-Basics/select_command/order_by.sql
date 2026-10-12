 /*
 
 
• Order by = Sort your data



 Two Mechanism
	 • ASC  = Lowest - Highest
	 • DESC = Highest - Lowest



 • Default = Asc



	Syntax and execution order

3.	Select *
1.	from Customers
2.	Order By Score Desc;


*/



-- Retrive all the customers and sort the results by the highest score first
Select *
From Customers
Order by Score Desc;



-- Retrive all the customers and sort the results by the lowest score first
Select *
From Customers
Order by Score Asc;



			-- NESTED ORDER BY --
-- Retrive all the customers and sort the results by the country and then by the highest score
Select * 
From Customers
Order by 
	Country Asc,
	Score Desc;




-- IMPORTANT: Column order in ORDER BY is crucial, as sorting is sequential
