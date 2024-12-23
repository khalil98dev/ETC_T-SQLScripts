
	alter PROCEDURE SP_AddNewClockin
		@EmployeeID int, 
		@ClockInTime time , 
		@ClockOutTime time, 
		@ClockDate Date , 
		@CreatedByUserID int null, 
		@ShiftID int ,
		@IsDeleted bit =0
		as
		begin 
			begin try 
				insert into Clockins 
			values (@EmployeeID,@ClockInTime,@ClockOutTime,@ClockDate,@CreatedByUserID
			,@ShiftID,@IsDeleted)

			return SCOPE_IDENTITY();
			end try 

			begin catch 
			return error_message();
			end catch
		end