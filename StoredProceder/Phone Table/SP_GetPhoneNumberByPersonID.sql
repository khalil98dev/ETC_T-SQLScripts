
	Alter Procedure SP_GetPhoneNumberByPersonID
		@PersonID int 
		as 
		begin 
		begin try 
			select * from Phones 
		where PersonID = @PersonID and IsDeleted <> 1
		end try		
		
		begin catch 
			return Error_Message(); 
		end catch 

		
		end 