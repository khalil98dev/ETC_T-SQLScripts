
	create procedure SP_GetDepartementByID
		@DepID int 
		as 
		begin 
			begin try 
				select * from Departements
				where DepID = @DepID 
				And IsDeleted <> 1 
			end try

			begin catch	
				return Error_Message();
			end Catch
		end