CREATE OR ALTER VIEW VBrooms
AS
	select B.name
	from Broom B
	where B.shop = 'Ellerby and Spudmore'
GO

CREATE OR ALTER VIEW VTeacherClasses
AS
	select C.subject, C.credits, T.fname, T.lname
	from Class C, Teacher T
	where C.nr_stud >20
go

CREATE OR ALTER VIEW VBookClass
AS
	select B.name 
	from Book B, Class C
	where C.credits>15
	group by B.name
GO

--insert into Views (ViewName) values ('VBrooms'), ('VTeacherClasses'), ('VBookClass')
--insert into Tests values ('select_views'), ('insertTeacher'), ('deleteTeacher'), ('insertStudent'), ('deleteStudent'), ('insertAttendance'), ('deleteAttendance')
--insert into TestViews values (1,1), (1,2), (1,3)
--insert into Tables values ('Teacher'), ('Student'), ('Attends')

--insert into TestTables(TestID, TableID, NoOfRows, Position) values
--	(2, 1, 50, 1),
--	(3, 1, 50, 1),
--	(4, 2, 50, 1),
--	(5, 2, 50, 1),
--	(6, 3, 50, 1),
--	(7, 3, 50, 1)
--go

CREATE OR ALTER PROC insertTeacher
AS
	--DECLARE @total_rows INT = (SELECT COUNT(teacher_id) FROM Teacher)
	DECLARE @set_id INT = (SELECT MAX(teacher_id) FROM Teacher) +1
	DECLARE @current_row INT = 0
	DECLARE @NoOfRows INT 
	SELECT @NoOfRows = NoOfRows FROM TestTables WHERE TestID = 2
	WHILE @current_row < @NoOfRows
		BEGIN
			INSERT INTO Teacher VALUES(@set_id, 'test', 'test', 100)
			SET @set_id = @set_id + 1
			SET @current_row = @current_row + 1
		END
GO

CREATE OR ALTER PROC deleteTeacher
AS
	DECLARE @current_id INT = (SELECT MAX(teacher_id) FROM Teacher)
	DECLARE @current_row INT = 0
	DECLARE @NoOfRows INT 
	SELECT @NoOfRows = NoOfRows FROM TestTables WHERE TestID = 3
	WHILE @current_row < @NoOfRows
		BEGIN
			DELETE FROM Teacher WHERE teacher_id = @current_id
			SET @current_id = @current_id - 1
			SET @current_row = @current_row + 1
		END
GO

CREATE OR ALTER PROC insertStudent
AS
	--DECLARE @total_rows INT = (SELECT COUNT(stud_id) FROM Student)
	DECLARE @set_id INT = (SELECT MAX(stud_id) FROM Student) +1
	DECLARE @current_row INT = 0
	DECLARE @NoOfRows INT 
	SELECT @NoOfRows = NoOfRows FROM TestTables WHERE TestID = 4
	WHILE @current_row < @NoOfRows
		BEGIN
			INSERT INTO Student VALUES(@set_id, 'test', 'test', 10, 20, 'test')
			SET @set_id = @set_id + 1
			SET @current_row = @current_row + 1
		END
GO

CREATE OR ALTER PROC deleteStudent
AS
	DECLARE @current_id INT = (SELECT MAX(stud_id) FROM Student)
	DECLARE @current_row INT = 0
	DECLARE @NoOfRows INT 
	SELECT @NoOfRows = NoOfRows FROM TestTables WHERE TestID = 5
	WHILE @current_row < @NoOfRows
		BEGIN
			DELETE FROM Student WHERE stud_id = @current_id
			SET @current_id = @current_id - 1
			SET @current_row = @current_row + 1
		END
GO

CREATE OR ALTER PROC insertAttendance
AS
	--DECLARE @total_rows INT = (SELECT COUNT(stud_id) FROM Attends)
	EXECUTE insertStudent
	DECLARE @set_id INT = 70
	DECLARE @current_row INT = 0
	DECLARE @NoOfRows INT 
	SELECT @NoOfRows = NoOfRows FROM TestTables WHERE TestID = 6
	WHILE @current_row < @NoOfRows
		BEGIN
			INSERT INTO Attends VALUES(@set_id, 80)
			SET @set_id = @set_id + 1
			SET @current_row = @current_row + 1
		END
GO

CREATE OR ALTER PROC deleteAttendance
AS
	DECLARE @current_id INT = 70
	DECLARE @current_row INT = 0
	DECLARE @NoOfRows INT 
	SELECT @NoOfRows = NoOfRows FROM TestTables WHERE TestID = 7
	WHILE @current_row < @NoOfRows
		BEGIN
			DELETE FROM Attends WHERE @current_id=stud_id
			SET @current_id = @current_id + 1
			SET @current_row = @current_row + 1
		END
GO

--execute insertTeacher
--execute deleteTeacher
--execute insertStudent
--execute deleteStudent
--execute insertAttendance
--execute deleteAttendance

CREATE OR ALTER PROC select_views
AS
	BEGIN
		declare @startAt1 datetime
		declare @endAt1 datetime
		
		declare @startAt2 datetime
		declare @endAt2 datetime

		declare @startAt3 datetime
		declare @endAt3 datetime

		set @startAt1 = GETDATE()
		exec ('select * from VBrooms')
		print 'view1: select * from VBrooms'
		set @endAt1 = GETDATE()
		insert into TestRuns values ('TestRun1', @startAt1, @endAt1)
		insert into TestRunViews values (@@IDENTITY, 1, @startAt1, @endAt1)

		set @startAt2 = GETDATE()
		exec ('select * from VTeacherClasses')
		print 'view2: select * from VTeacherClasses'
		set @endAt2 = GETDATE()
		insert into TestRuns values ('TestRun2', @startAt2, @endAt2)
		insert into TestRunViews values (@@IDENTITY, 2, @startAt2, @endAt2)

		set @startAt3 = GETDATE()
		exec ('select * from VBookClass')
		print 'view3: select * from VBookClass'
		set @endAt3 = GETDATE()
		insert into TestRuns values ('TestRun3', @startAt3, @endAt3)
		insert into TestRunViews values (@@IDENTITY, 3, @startAt3, @endAt3)
	end
go

execute select_views

CREATE OR ALTER PROC testsTables
AS
	BEGIN
		declare @startAt1 datetime
		declare @endAt1 datetime
		
		declare @startAt2 datetime
		declare @endAt2 datetime

		declare @startAt3 datetime
		declare @endAt3 datetime

		declare @startAt4 datetime
		declare @endAt4 datetime
		
		declare @startAt5 datetime
		declare @endAt5 datetime

		declare @startAt6 datetime
		declare @endAt6 datetime

		set @startAt1 = GETDATE()
		exec insertTeacher
		set @endAt1  = GETDATE()
		insert into TestRuns values ('TestRun4', @startAt1, @endAt1)
		insert into TestRunTables values (@@IDENTITY, 1, @startAt1, @endAt1)

		set @startAt2 = GETDATE()
		exec deleteTeacher
		set @endAt2  = GETDATE()
		insert into TestRuns values ('TestRun5', @startAt2, @endAt2)
		insert into TestRunTables values (@@IDENTITY, 1, @startAt2, @endAt2)

		set @startAt3 = GETDATE()
		exec insertStudent
		set @endAt3  = GETDATE()
		insert into TestRuns values ('TestRun6', @startAt3, @endAt3)
		insert into TestRunTables values (@@IDENTITY, 2, @startAt3, @endAt3)

		set @startAt4 = GETDATE()
		exec deleteStudent
		set @endAt4  = GETDATE()
		insert into TestRuns values ('TestRun7', @startAt4, @endAt4)
		insert into TestRunTables values (@@IDENTITY, 2, @startAt4, @endAt4)

		set @startAt5 = GETDATE()
		exec insertAttendance
		set @endAt5  = GETDATE()
		insert into TestRuns values ('TestRun8', @startAt5, @endAt5)
		insert into TestRunTables values (@@IDENTITY, 3, @startAt5, @endAt5)

		set @startAt6 = GETDATE()
		exec deleteAttendance
		set @endAt6  = GETDATE()
		insert into TestRuns values ('TestRun9', @startAt6, @endAt6)
		insert into TestRunTables values (@@IDENTITY, 3, @startAt6, @endAt6)
	END
GO

execute testsTables