
		
	CREATE PROCEDURE SP_UpdateJustification
		@ClockinID int, 
		@DocumentPath varchar(250) ,
		@IsAproved bit =null, 
		@IsDeleted bit =0
		as 
		begin 
			begin try
				update Justifications 
				set 
				DocumentPath = @DocumentPath,
				IsAproved = @IsAproved, 
				IsDeleted = @IsDeleted	
				where ClockinID =@ClockinID

			end try 

			begin catch 
				return ERROR_MESSAGE();

			end catch
			end
