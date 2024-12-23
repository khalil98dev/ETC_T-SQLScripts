
	CREATE PROCEDURE SP_GetLoanByID 
		@LoanID int
		as 
		begin 
			select * from Loans 
			where LoanID = @LoanID 
			and IsDeleted <>1
		end


