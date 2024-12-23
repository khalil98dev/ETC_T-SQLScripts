
	Create Procedure SP_AddNewShift
		@ShiftName nvarchar(50), 
		@StartShift Time , 
		@EndShift Time , 
		@BreakDuration time , 
		@IsDeleted bit = 0

		as 
			begin 
				begin try 
					insert Into Shifts values 
							(@ShiftName,@StartShift,@EndShift,@BreakDuration,@IsDeleted);

							return SCOPE_IDENTITY();
				end try 
				begin  catch 
					return Error_Message(); 

				end catch
			end
