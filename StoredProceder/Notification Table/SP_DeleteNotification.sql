
	CREATE PROCEDURE SP_DeleteNotification 
		@NotifyID int 
		as 
		begin 
		begin try 
			Delete from Notifications 
			where NotifyID = @NotifyID 
		end try 

		begin catch	
			return Error_Message();
		end catch
		end