
	Create Procedure SP_AddNewPhone
		@PersonID int , 
		@PhoneNumber nvarchar(13),
		@IsDeleted bit = 0
		as 
		Begin 
		begin try 
			insert into Phones values (@PersonID,@PhoneNumber,@IsDeleted) 

			return SCOPE_Identity(); 
		end try 
		begin catch 
			return Error_Message(); 

		end catch
		End

