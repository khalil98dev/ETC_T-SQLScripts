
	CREATE PROCEDURE SP_UpdateLogType 
		@LogTypeID int , 
		@LogName int , 
		@LogDescription nvarchar(255) 
		as 
			begin 
				BEGIN TRY 
					
					Update LogTypes 
					set 
					LogName = @LogName, 
					LogDescriptions = @LogDescription 
					where LogTypeId = @LogTypeID 


				END TRY 
				BEGIN CATCH 
					return Error_Message();
				END CATCH
			end