	Alter Procedure SP_GetPersonByLastName
		@LastName nvarchar(50) 
		as 
		begin 

		begin try
			select * from People
			where LastName = @LastName and IsDeleted <>1 
		end try 
		begin catch 
			return Error_Message(); 

		end catch 

		End

