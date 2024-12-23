
	CREATE PROCEDURE SP_GetClockinByID
		@ClockinID int 
		as
		begin 
			begin try 
				select * from Clockins
				where ClockinID = @ClockinID
				and IsDeleted <>1
			end try 

			begin catch 
				return ERROR_MESSAGE(); 
			end catch

		end

		