
	Alter PROCEDURE SP_AddNewNotification 
		@ReciverID int,
		@NotificationDateTime DateTime , 
		@NotifiResult bit , 
		@Subject nvarchar(50), 
		@Object nvarchar(255), 
		@Body nvarchar(500),
		@IsDeleted bit =0 

		
		as
		Begin 

		begin try 
			insert into Notifications 
			values
			(@ReciverID,@NotificationDateTime,@NotifiResult,@Subject,@Object,@Body,@IsDeleted)
			return SCOPE_IDENTITY();
		end try 

		begin catch 
			return error_message();
		end catch

		End


		