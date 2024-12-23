
	CREATE PROCEDURE SP_UpdateNotification 
		@NotifyID int,
		@ReciverID int,
		@NotificationDateTime DateTime , 
		@NotifiResult bit , 
		@Subject nvarchar(50), 
		@Object nvarchar(255), 
		@Body nvarchar(500)

		
		as
		Begin 

		begin try 
			Update Notifications
			set 
				RecivcerID					=	@ReciverID,
				NotificationDateTime		=	@NotificationDateTime,
				NotifiResult				=	@NotifiResult,
				Subject						=	@Subject,
				Object						=	@Object,
				Body						=	@Body
		
		end try 

		begin catch 
			return error_message();
		end catch

		End


		