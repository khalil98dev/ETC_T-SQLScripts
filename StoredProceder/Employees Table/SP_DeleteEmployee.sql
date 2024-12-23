
	create procedure SP_DeleteEmployee
		@EmployeeID int 
		as 
		begin 
			begin try 
				Delete from Employees 
				where EmployeeID = @EmployeeID 
			end try

			begin catch	
				return Error_Message();
			end Catch
		end