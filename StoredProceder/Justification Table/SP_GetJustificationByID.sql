
	CREATE PROCEDURE SP_GetJustificationByID
		@JustificationID int
		as 
		begin 
			begin try 
				select * from Justifications 
				where JustificationID = @JustificationID
			end try 

			begin catch 
			RETURN ERROR_MESSAGE();

			end catch 
		end	
