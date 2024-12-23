
	create procedure SP_GetEmployeeByID
		@EmployeeID int 
		as 
		begin 
			begin try 
				select * from Employees
				where EmployeeID = @EmployeeID 
				And IsDeleted <> 1 
			end try

			begin catch	
				return Error_Message();
			end Catch
		end