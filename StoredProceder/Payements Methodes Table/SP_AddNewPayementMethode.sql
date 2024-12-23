
	
	Create PROCEDURE SP_AddNewPayementMethode
		 
		@MethodeName nvarchar(50),
		@Description nvarchar(250),
		@IsDeleted bit =0
		as
		Begin 

		begin try 
			insert into PayementMethodes 
			values
			(@MethodeName,@Description,@IsDeleted)
			return SCOPE_IDENTITY();
		end try 

		begin catch 
			return error_message();
		end catch

		End

