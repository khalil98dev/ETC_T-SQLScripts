	Alter PROCEDURE SP_AddNewPerson

			 @FirstName nvarchar(100), 
			 @LastName nvarchar(100), 
			 @DateOfBirth Date, 
			 @Country nvarchar(50), 
			 @Satate nvarchar(50), 
			 @City nvarchar(50), 
			 @Adress nvarchar(50), 
			 @Email nvarchar(80), 
			 @Gender bit , 
			 @PicturePath nvarchar(250), 
			 @IsDeleted bit =0
		 As 

		 BEGIN 
			Insert into People values(@FirstName,@LastName,@DateOfBirth,@Country,@Satate,@City,@Adress,@Email,
				@Gender,@PicturePath,@IsDeleted); 

			return SCOPE_IDENTITY(); 

		 END

		  
