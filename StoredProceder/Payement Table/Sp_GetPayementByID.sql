
	create procedure Sp_GetPayementByID
		@PayementID int 
		as
		begin 
		select * from Payements
		where PayementID = @PayementID and IsDeleted <>1
		end
