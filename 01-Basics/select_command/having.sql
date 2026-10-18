/*


	HAVING = Filters data after aggregation

	Can be used only with GROUP BY



	     HAVING VS WHERE

   Filter data   -> Before Aggregation (Where)
   Filter data   -> Aftere Aggragation (Having)


        Syntax and execution order


   4.  Select
		Country,
		SUM(Score)
   1.  From Customers
   2.  Group By Country
   3.  Having SUM(Score) > 800


*/


SELECT 
	Country,
	SUM(Score) as total_score
FROM Customers
GROUP BY Country
HAVING SUM(Score) > 900;





-- Use where and having both together




-- Without where
SELECT 
	Country,
	SUM(Score) as total_score
FROM Customers
GROUP BY Country
HAVING SUM(Score) > 400;



-- With Having and Where
SELECT 
	Country,
	SUM(Score) as total_score
FROM Customers
WHERE Score > 400
GROUP BY Country
HAVING SUM(Score) > 400;

/*
	Find the average score for each country considering only customers
	with a score not equals to 0 and return only those countries with an
	average score greater than 430
*/

SELECT 
	Country,
	AVG(Score) as average_score
FROM Customers
where Score != 0
GROUP BY Country
HAVING AVG(Score) > 430







