
	CREATE PROCEDURE SP_UpdateClockin
		@ClockinID int,
		@EmployeeID int,
		@ClockInTime time , 
		@ClockOutTime time, 
		@ClockDate Date , 
		@CreatedByUserID int null, 
		@ShiftID int 
		as
		begin 
			begin try 
				Update Clockins 
				set
				ClockDate = @ClockDate,
				ClockInTime = @ClockInTime,
				ClockOutTime = @ClockOutTime, 
				CreatedByUserID =@CreatedByUserID,
				ShiftID = @ShiftID,
				 
				EmployeeID	=@EmployeeID; 

			
			end try 

			begin catch 
			return error_message();
			end catch
		end