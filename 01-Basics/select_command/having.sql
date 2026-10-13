/*


	HAVING = Filters data after aggregation

	Can be used only with GROUP BY



	     HAVING VS WHERE

   Filter data   -> Before Aggregation (Where)
   Filter data   -> Aftere Aggragation (Having)


        Syntax and execution order


   4. Select
		Country,
		SUM(Score)
   1.  From Customers
   2.  Group By Country
   3.  Having SUM(Score) > 800


*/