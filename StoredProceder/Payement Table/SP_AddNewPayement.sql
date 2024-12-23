
	Alter PROCEDURE SP_AddNewPayement
		 
		@PayementAmmount money,
		@PayementDateTime DateTime , 
		@PayementMethodeID int,
		@IsDeleted bit =0
		as
		Begin 

		begin try 
			insert into Payements 
			values
			(@PayementAmmount,@PayementDateTime,@PayementMethodeID,@IsDeleted)
			return SCOPE_IDENTITY();
		end try 

		begin catch 
			return error_message();
		end catch

		End

