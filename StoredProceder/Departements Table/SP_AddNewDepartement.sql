
	CREATE PROCEDURE SP_AddNewDepartement
		@DepName nvarchar(50), 
		@DespDescription nvarchar(500),
		@IsActive bit =1, 
		@IsDeleted bit =0 
		as
		begin 
			begin try 
				iNSERT INTO Departements 
				VALUES (@DepName,@DespDescription,@IsActive,@IsDeleted); 
				return SCOPE_IDENTITY(); 
			end try 

			begin catch 
				return ERROR_MESSAGE(); 
			end catch

		end
