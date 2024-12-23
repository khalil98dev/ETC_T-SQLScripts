
	CREATE TABLE HistoryAudit 
		(
			ActionID int primary key , 
			ActionDateTime DateTime not null, 
			ActionTitle nvarchar(50) not null, 
			ActionObjectID int,
			ActionObjectName nvarchar(50), 
			ActionSubjectUserID int not null, 
			ActionDescription nvarchar(250) null
		)