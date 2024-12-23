
	CREATE PROCEDURE SP_UpdateUser
		@UserID int, 
		@UserName nvarchar(50),
		@Password nvarchar(50),
		@Persimssion int,
		@IsActive bit =1 
		as 
		Begin 
			begin try 
				Update Users 
				set 
					UserName = @UserName, 
					Password = @Password, 
					Persmissions = @Persimssion,
					IsActive = @IsActive 
				where UserID= @UserID
			End try 

			Begin Catch 
				return ERROR_MESSAGE();
			End Catch 
		End