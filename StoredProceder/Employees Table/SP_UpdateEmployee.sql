	
	CREATE PROCEDURE SP_UpdateEmployee 
		 @EmployeeID int,
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
			Update Employees set 
				UserID = @UserID,
				PersonID = @PersonID, 
				ManagerID = @ManagerID, 
				DepartementID= @DepartementID, 
				HiredDate=@HireDate,
				Salary=@Salary,
				Notes=@Note,
				IsActive=@IsActive,
				IsDeleted=@IsDeleted 
			where EmployeeID =@EmployeeID 
		
			end try 
			begin catch	
				return Error_Message();
			end catch

			
			end

