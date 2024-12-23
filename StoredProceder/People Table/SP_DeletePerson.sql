	CREATE PROCEDURE SP_DeletePerson
		@PersonID int 
		as
		Begin
			Begin try 
				Delete From People 
				where PersonID = @PersonID 
			End try 

			begin catch 
				return Error_Message(); 
			end catch 
		End
