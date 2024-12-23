	Alter Procedure SP_GetPersonByFirstName
		@FirstName nvarchar(50) 
		as 
		begin 

		begin try
			select * from People
			where FirstName = @FirstName and IsDeleted <>1
		end try 
		begin catch 
			return Error_Message(); 

		end catch 

		End

