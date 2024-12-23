
	Alter PROCEDURE SP_AddNewLogType 
	
		@LogName int , 
		@LogDescription nvarchar(255) 
		as 
			begin 
				BEGIN TRY 
					insert into LogTypes 
					values 
					(@LogName,@LogDescription); 
					return SCOPE_IDENTITY(); 

				END TRY 
				BEGIN CATCH 
				return Error_Message();
				END CATCH
			end