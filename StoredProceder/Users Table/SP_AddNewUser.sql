

	CREATE PROCEDURE SP_AddNewUser
		@PersonID int, 
		@UserName nvarchar(50),
		@Password nvarchar(50),
		@Persimssion int,
		@IsActive bit =1, 
		@IsDeleted bit =0 
		as
		begin
			begin try 
			Insert into Users 
			values 
			(@PersonID,@UserName,@Password,@Persimssion,@IsActive,@IsDeleted); 
			return Scope_Identity();
			end try 

			begin catch 
				return Error_Message(); 
			end catch
			End