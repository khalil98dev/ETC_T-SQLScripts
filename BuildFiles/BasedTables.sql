
use ETC; 

/* Table of People*/
	Create Table People 
	(
		PersonID int Primary key not null identity(1,1),
		FirstName nvarchar(100) not null, 
		LastName nvarchar(100) not null, 
		DateOfBirth Date not null, 
		Country nvarchar(50) null, 
		State nvarchar(50) null, 
		City nvarchar(50) null, 
		Adress nvarchar(50) null, 
		Email nvarchar(80) null, 
		Gender bit not null, 
		PicturePath nvarchar(250) null, 
		IsDeleted bit null 
	)
	

/* Table of Phones*/

	Create Table Phones
	(
	PhoneID int primary key identity(1,1) not null, 
	PersonID int References People(PersonID), 
	PhoneNumber varchar(13) /* Exemple (4)+213 (9)771278844 = 13*/
	)

	Create Table Users
	(
		UserID int primary key identity(1,1), 
		PersonID int references People(PersonID), 
		UserName nvarchar(50) not null, 
		Password nvarchar(50) not null, 
		Persmissions int not null, 
		IsActive bit null, 
		isDeleted bit null
	)

	Create Table Departements
	(
		DepID int primary key identity(1,1), 
		DepName nvarchar(50) not null, 
		DepDescription nvarchar(500) null,
		IsActive bit null, 
		IsDeleted bit null
	)
	
	Create Table Employees 
	(
		EmployeeID int primary key identity(1,1), 
		UserID int references Users(UserID) null, 
		PersonID int references People(PersonID), 
		ManagerID int references Employees(EmployeeID), 
		DepartementID int references Departements(DepID), 
		HiredDate Date not null, 
		Salary smallmoney not null, 
		Notes nvarchar(250) null, 
		IsActive bit null, 
		IsDeleted bit null
		
	)
	Create Table LogTypes
	(
		LogTypeId int Primary key identity(1,1), 
		LogName nvarchar(50), 
		LogDescriptions nvarchar(255) null
	)

	Create Table UsersLog
	(
		LogID int Primary key identity(1,1), 
		LogTypeID int references LogTypes(LogTypeId), 
		UserID int references Users(UserID) not null, 
		LogDateTime DateTime not null, 
		LogResult bit not null 

	)

	Create Table Notifications
	(
		NotifyID int primary key identity(1,1) , 
		RecivcerID int references People(PersonID), 
		NotificationDateTime DateTime not null ,
		NotifiResult bit not null, 
		Subject nvarchar(50) not null, 
		Object nvarchar(255) not null, 
		Body nvarchar(500) not null

	)

	Create Table Shifts 
	(
		ShiftID int primary key identity(1,1), 
		ShiftName nvarchar(50) not null, 
		StartShift Time not null, 
		EndShift Time not null, 
		BreakDuration TIme not null, 
		IsDeleted bit null
	)

	Create Table Clockins
	(
		ClockinID int primary key identity(1,1) , 
		EmployeeID int references Employees(EmployeeID),
		ClockInTime Time not null, 
		ClockOutTime Time null, 
		ClockDate Date not null, 
		CreatedByUserID int references Users(UserID) null, 
		ShiftID int references Shifts(ShiftID) not null


	)

	Create Table Justifications 
	(
		JustificationID int primary key identity(1,1), 
		ClockinID int references Clockins(ClockinID), 
		DocumentPath varchar(250) not null,
		IsAproved bit null 

	)

	Create Table PayementMethodes
	(
		MethodID int primary key identity(1,1), 
		MethodeName nvarchar(50) not null, 
		Description nvarchar(250) null 
	)

	Create Table Payements
	(
		PayementID int primary key identity(1,1),
		PayementAmmount money not null, 
		PayementDateTime DateTime not null, 
		PayementMethodeID int references PayementMethodes(MethodID) not null
	)

	Create Table Loans 

	(
		LoanID int primary key identity(1,1), 
		LoanDateTime DateTime not null, 
		LoanAmmount money not null, 
		EmployeeID int references Employees(EmployeeID) not null, 
		HasBeenPaidInFull bit null, 
		PayementID int references Payements(PayementID) 

	)


