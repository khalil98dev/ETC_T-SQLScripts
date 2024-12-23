
	CREATE PROCEDURE SP_UpdatePayementMethode
		@PayementMethodeID int,
		@MethodeName nvarchar(50),
		@Description nvarchar(250)


		as begin 
			begin try 
				Update PayementMethodes 
				set MethodeName = @MethodeName,
				Description = @Description 
				where PayementMethodes.MethodID = @PayementMethodeID

			end try
		begin catch	
			return error_message();
		end catch
		
		
		
		
		end 