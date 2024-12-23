
CREATE FUNCTION GetEmployees()
	returns Table 
	as 
	RETURN 
		(
				 with Manager as 
				(
				select E.EmployeeID as ManagerID,  
				CONCAT(P.FirstName,' ',P.LastName) As ManagerFullName  

				from Employees E
				inner join People P on P.PersonID = E.EmployeeID 
				)
				select E.EmployeeID,
				CONCAT(P.FirstName,' ',P.LastName) As FullName,
				M.ManagerFullName,D.DepName,HiredDate,Salary,Notes,E.IsActive
				from Employees E 

				inner join People P on P.PersonID = E.PersonID 
				inner join Manager M on M.ManagerID = E.ManagerID
				inner join Departements D on D.DepID = E.DepartementID
		)





	
	



