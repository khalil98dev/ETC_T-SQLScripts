
	Create procedure SP_GetShiftByID
		@ShiftID int
		as
		Begin 
			select * from Shifts
			where ShiftID = @ShiftID 
			and IsDeleted <> 1 ; 
	end 