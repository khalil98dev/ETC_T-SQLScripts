
	Alter Procedure SP_UpdatePhone 
		@PhoneID int ,
		@PhoneNumber varchar(13)
		as 
			begin 
				begin try 
					Update Phones 
					set PhoneNumber = @PhoneNumber
					where @PhoneID = @PhoneID 
					and IsDeleted <>1 
				end try 

				begin catch
					return Error_Message(); 

				end Catch
			end 