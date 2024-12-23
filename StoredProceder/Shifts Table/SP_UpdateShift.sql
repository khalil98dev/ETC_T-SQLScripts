	
	
	Alter Procedure SP_UpdateShift
		@ShiftID int, 
		@ShiftName nvarchar(50), 
		@StartShift Time , 
		@EndShift Time , 
		@BreakDuration time  


		as 
			begin 
				begin try 
					Update  Shifts 
					set
					ShiftName=@ShiftName,
					StartShift=@StartShift,
					EndShift=@EndShift,
					BreakDuration=@BreakDuration
					where ShiftID = @ShiftID 
					And IsDeleted <>1 ; 

							return SCOPE_IDENTITY();
				end try 
				begin  catch 
					return Error_Message(); 

				end catch
			end
