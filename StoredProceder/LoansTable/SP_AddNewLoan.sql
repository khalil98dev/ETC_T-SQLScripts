	
	Create procedure SP_AddNewLoan 
		@LoanDateTime DateTime , 
		@LoanAmmount money , 
		@EmployeeID int, 
		@HasBeenPaidInFull bit=null, 
		@PayementID int =null
		as 
		begin 
			begin try 
				Insert Into Loans 
				values 
				(@LoanDateTime,@LoanAmmount,@EmployeeID,@HasBeenPaidInFull,@PayementID) 
				return SCOPE_IDENTITY	();

			end try 

			begin catch 
				return error_message(); 
			end catch
		end