
	Create PROCEDURE SP_GetNotificationByID 
		@NotifyID int
		AS 
		BEGIN 
			SELECT * FROM Notifications
			WHERE NotifyID = @NotifyID
			AND IsDeleted <> 1 
		end