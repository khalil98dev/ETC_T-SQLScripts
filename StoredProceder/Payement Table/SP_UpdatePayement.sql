

	CREATE PROCEDURE SP_UpdatePayement
		@PayementID int,
		@PayementAmmount money,
		@PayementDateTime DateTime , 
		@PayementMethodeID int 
		as
		begin
			begin try 
				Update Payements 
				set 
				
				PayementAmmount = @PayementAmmount,
				PayementDateTime = @PayementDateTime,
				PayementMethodeID= @PayementMethodeID
				where PayementID = @PayementID 

			end try 

			begin catch 
				return Error_Message(); 
			end catch
			End