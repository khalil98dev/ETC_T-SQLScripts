	
		
	Create procedure SP_UpdateLoan
		@LoanID int,
		@LoanDateTime DateTime , 
		@LoanAmmount money ,  
		@HasBeenPaidInFull bit, 
		@PayementID int 
		as 
		begin 
			begin try 
				Update Loans 
				set 
					LoanAmmount =@LoanAmmount,
					LoanDateTime = @LoanDateTime,
					HasBeenPaidInFull =@HasBeenPaidInFull, 
					PayementID = @PayementID
					where LoanID = @LoanID
			end try 

			begin catch 
				return error_message(); 
			end catch
		end