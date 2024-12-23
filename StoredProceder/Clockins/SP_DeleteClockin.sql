
	CREATE PROCEDURE SP_DeleteClockin
		@ClockinID int 
		as
		begin 
			begin try 
				delete from Clockins 
				where ClockinID = @ClockinID; 
			end try 

			begin catch 
				return ERROR_MESSAGE(); 
			end catch

		end
