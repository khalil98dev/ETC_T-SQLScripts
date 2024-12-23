	
	
	CREATE PROCEDURE SP_DeletePayementMethode
		@PayementMethodeID int
		


		as begin 
			begin try 
				Delete from  PayementMethodes 
				
				where PayementMethodes.MethodID = @PayementMethodeID

			end try
		begin catch	
			return error_message();
		end catch
		
		
		
		
		end 