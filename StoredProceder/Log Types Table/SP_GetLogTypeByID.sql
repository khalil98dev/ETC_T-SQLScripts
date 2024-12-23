
	create procedure SP_GetLOgTypeByID 
		@LogTypeID int  
		as 
		begin 
			select * from LogTypes 
			where LogTypeId = @LogTypeID 
			and IsDeleted <>1	
		end

