
	create procedure SP_DeleteDepartement
		@DepID int 
		as 
		begin 
			begin try 
				Delete from Departements 
				where DepID = @DepID 
			end try

			begin catch	
				return Error_Message();
			end Catch
		end