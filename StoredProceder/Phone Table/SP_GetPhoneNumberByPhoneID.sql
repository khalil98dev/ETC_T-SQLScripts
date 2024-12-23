
	Alter Procedure SP_GetPhoneNumberByPhoneID
		@PhoneID int 
		as 
		begin 
		begin try 
			select * from Phones 
		where PhoneID = @PhoneID and IsDeleted <>1 
		end try		
		
		begin catch 
			return Error_Message(); 
		end catch 
		end
		
