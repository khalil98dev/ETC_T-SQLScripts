Alter PROCEDURE SP_UpdatePerson
		   	 @PersonID int , 
			 @FirstName nvarchar(100), 
			 @LastName nvarchar(100), 
			 @DateOfBirth Date, 
			 @Country nvarchar(50), 
			 @State nvarchar(50), 
			 @City nvarchar(50), 
			 @Adress nvarchar(50), 
			 @Email nvarchar(80), 
			 @Gender bit , 
			 @PicturePath nvarchar(250)
		
		As 
		begin
		begin try
					Update People 
					set 
						FirstName = @FirstName ,
						LastName = @LastName, 
						DateOfBirth = @DateOfBirth, 
						Country = @Country, 
						State = @State,
						City = @City, 
						Adress = @Adress, 
						Email = @Email, 
						Gender = @Gender, 
						PicturePath = @PicturePath
						
					Where PersonID = @PersonID 
		end try 
		begin catch 
				return ERROR_MESSAGE() ;
		end catch 
		end

