
	CREATE PROCEDURE SP_UpdateDepartement
		@DepID int , 
		@DepName nvarchar(50), 
		@DepDescription nvarchar(500),
		@IsActive bit =1, 
		@IsDeleted bit =0 
		as
		begin 
			begin try 
				Update Departements 
				set 
					DepName = @DepName, 
					DepDescription =@DepDescription, 
					IsActive = @IsActive, 
					IsDeleted = @IsDeleted 
				where DepID= @DepID 
			end try 

			begin catch 
				return ERROR_MESSAGE(); 
			end catch

		end
