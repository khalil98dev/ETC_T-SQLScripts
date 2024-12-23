	Alter Procedure SP_GetPersonByID
		@PersonID int 
		as 
		begin 

		begin try
			select * from People
			where PersonID = @PersonID and IsDeleted <>1 
		end try 
		begin catch 
			return Error_Message(); 

		end catch 

		End

