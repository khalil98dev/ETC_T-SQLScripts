
	Create Procedure SP_DeletePhone 
		@PhoneID int
		as 
		Begin 
			begin try 
				Delete from Phones 
				where PhoneID = @PhoneID ;
			End try 
			Begin catch 
				return Error_Message(); 

			end Catch 

		End