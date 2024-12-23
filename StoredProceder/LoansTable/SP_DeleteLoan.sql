	
	
	CREATE PROCEDURE SP_DeleteLoan
		@LoanID int
		as 
		begin 
			begin try 
				delete from Loans 
				where LoanID = @LoanID ; 
			end try 

			begin catch 
				return error_message();
			end catch 
		end


