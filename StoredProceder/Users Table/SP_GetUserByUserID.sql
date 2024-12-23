
	CREATE PROCEDURE SP_GetUserByUserID
		@UserId int 
		as 
			begin 

				select * from Users 
				where UserID = @UserId 
				and isDeleted <>1 
			end 