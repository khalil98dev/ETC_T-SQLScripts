	
	CREATE PROCEDURE SP_AddNewEmployee 
		 @UserID int ,
		 @PersonID int,
		 @ManagerID int, 
		 @DepartementID int, 
		 @HireDate date,
		 @Salary smallMoney, 
		 @Note nvarchar(250), 
		 @IsActive bit =1, 
		 @IsDeleted bit =0 
		 as 
		 begin 
			begin try 
			INSERT INTO Employees 
			values 
			(@UserID,@PersonID,@ManagerID,@DepartementID,@HireDate,
			@Salary,@Note,@IsActive,@IsDeleted)

			return SCOPE_IDENTITY();
			end try 
			begin catch	
				return Error_Message();
			end catch

			
			end

