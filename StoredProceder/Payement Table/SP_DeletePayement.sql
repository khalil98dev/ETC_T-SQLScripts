
	Create procedure SP_DeletePayement
		@PayementID int 
		as begin 
			begin try 
				delete from  Payements 
				where PayementID = @PayementID 

			end try 

			begin catch 
				return Error_Message(); 
			end catch
			end