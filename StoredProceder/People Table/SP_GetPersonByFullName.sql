	Alter Procedure SP_GetPersonByFullName
		@FullName nvarchar(50) 
		as 
		begin 

		begin try
			select * from People
			where (FirstName+' '+ LastName)   = @FullName and IsDeleted <>1 
		end try 
		begin catch 
			return Error_Message(); 

		end catch 

		End

