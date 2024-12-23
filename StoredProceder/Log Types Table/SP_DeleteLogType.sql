
	CREATE PROCEDURE SP_DeleteLOgType 
		@LogTypeID int
		as 
		begin 
		begin try 

			delete from LogTypes 
			where LogTypeId = @LogTypeID 
		end try 
		begin catch 
			return error_message();
		end catch
		end