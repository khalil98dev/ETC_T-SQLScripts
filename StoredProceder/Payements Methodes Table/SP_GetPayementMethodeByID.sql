	
	
	CREATE PROCEDURE SP_GetPayementMethodeByID
		@PayementMethodeID int


		as begin 
			begin try 
				select * from PayementMethodes
				where PayementMethodes.MethodID = @PayementMethodeID
				and IsDeleted <>1

			end try
		begin catch	
			return error_message();
		end catch
		
		
		
		
		end 