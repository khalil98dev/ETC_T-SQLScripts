
	CREATE PROCEDURE SP_Deletejustifaication
		@JustificationID int
		as 
		begin 
			begin try 
				delete from Justifications 
				where JustificationID = @JustificationID
			end try 

			begin catch 
			RETURN ERROR_MESSAGE();

			end catch 
		end	
