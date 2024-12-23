	
	Alter Procedure SP_DeleteShift
		@ShiftID int
		as 
		Begin 

		begin try 
			Delete from Shifts 
			where ShiftID = @ShiftID 
			and IsDeleted <>1 ; 

		end try 

		begin catch 
		return Error_Message(); 
		end catch 

		End 