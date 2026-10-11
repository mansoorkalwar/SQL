-- WHERE = Filters your data based on a condition



/*
		Syntax

3   Select * 
1.  from tblStudents
2.  where Age > 20


*/




--			PRACTICE TASK





-- Retrive students age higher than 20
select * 
from tblStudents
where Age > 20;


-- Retrive customers with a score not equal to zero
select * 
from Customers
where Score != 0;


-- Retrive customers from Germany
select * 
from Customers
where Country = 'Germany';


-- Retrive customers name and country column who belongs to Germany
select 
	FirstName,
	Country
from Customers
where Country = 'Germany';