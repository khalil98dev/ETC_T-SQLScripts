

	CREATE PROCEDURE SP_DeleteUser
		@UserID int 
		as 
		Begin 
			begin try 
				Delete from Users 
				where UserID = @UserID 

			end try 

			begin catch
				return ERROR_MESSAGE();

			end catch
		End