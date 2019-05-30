
if OBJECT_ID('TestRunViews', 'U') IS NOT NULL
	drop table TestRunViews
if OBJECT_ID('TestRunTables', 'U') IS NOT NULL
	drop table TestRunTables
if OBJECT_ID('TestRuns', 'U') IS NOT NULL
	drop table TestRuns
if OBJECT_ID('TestViews', 'U') IS NOT NULL
	drop table TestViews
if OBJECT_ID('Views', 'U') IS NOT NULL
	drop table Views
if OBJECT_ID('TestTables', 'U') IS NOT NULL
	drop table TestTables
if OBJECT_ID('Tables', 'U') IS NOT NULL
	drop table Tables
if OBJECT_ID('Tests', 'U') IS NOT NULL
	drop table Tests

CREATE TABLE Tests
	(TestID int primary key identity(1,1),
	TestName nvarchar(50) not null)

CREATE TABLE Tables
	(TableID int primary key identity(1,1),
	TableName nvarchar(50) not null)

CREATE TABLE TestTables
	(TestID int foreign key references Tests(TestID),
	TableID int foreign key references Tables(TableID), 
	NoOfRows int not null,
	Position int not null,
	PRIMARY KEY(TestID, TableID))

CREATE TABLE Views
	(ViewID int primary key identity(1,1),
	ViewName nvarchar(50))

CREATE TABLE TestViews
	(TestID int foreign key references Tests(TestID),
	ViewID int foreign key references Views(ViewID),
	PRIMARY KEY(TestID, ViewID))

CREATE TABLE TestRuns
	(TestRunID int primary key identity(1,1),
	TestRunDescr nvarchar(2000),
	StartAt datetime null,
	EndAt datetime null)

CREATE TABLE TestRunTables
	(TestRunID int foreign key references TestRuns(TestRunID),
	TableID int foreign key references Tables(TableID),
	StartAt [datetime] not null,
	EndAt [datetime] not null,
	PRIMARY KEY (TestRunID, TableID))

CREATE TABLE TestRunViews
	(TestRunID int foreign key references TestRuns(TestRunID),
	ViewID int foreign key references Views(ViewID),
	StartAt datetime not null,
	EndAt datetime not null,
	PRIMARY KEY(TestRunID, ViewID))