	
	Alter PROCEDURE SP_AddNewJustification
	
		@DocumentPath varchar(250) ,
		@IsAproved bit =null, 
		@IsDeleted bit =0 
		as 
		begin 
			begin try
				insert into Justifications 
				values 
				(@DocumentPath,@IsAproved,@IsAproved,@IsDeleted)

				return SCOPE_Identity();
			end try 

			begin catch 
				return ERROR_MESSAGE();

			end catch
			end
