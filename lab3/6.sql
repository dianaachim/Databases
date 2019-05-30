--modify the type of a column

CREATE PROC change1
	AS
		ALTER TABLE Broom ALTER COLUMN name VARCHAR(100)
	GO

CREATE PROC original1
	AS
		ALTER TABLE Broom ALTER COLUMN name VARCHAR(30)
	GO

-- add / remove a column
CREATE PROC change2
	AS
		ALTER TABLE House ADD animal VARCHAR(50)
	GO

CREATE PROC original2
	AS
		ALTER TABLE House DROP COLUMN animal
	GO

--add / remove a DEFAULT constraint;
ALTER PROC change3
	AS
		ALTER TABLE Spell ADD Temp VARCHAR(30)
		ALTER TABLE Spell ADD CONSTRAINT Spell_def DEFAULT 'temporary' FOR Temp
	GO

ALTER PROC original3
	AS
		ALTER TABLE Spell DROP CONSTRAINT Spell_def
		ALTER TABLE Spell DROP COLUMN Temp
	GO

 --add / remove a primary key;
 CREATE PROC change4
	AS
		ALTER TABLE Spell DROP CONSTRAINT PK_spell_id
	GO
	
 CREATE PROC original4
	AS
		ALTER TABLE Spell ADD CONSTRAINT PK_spell_id PRIMARY KEY(spell_id)
	GO

--add / remove a candidate key
CREATE PROC change5
	AS
		ALTER TABLE House ADD CONSTRAINT UQ_founder UNIQUE (founder)
	GO

CREATE PROC original5
	AS
		ALTER TABLE House DROP CONSTRAINT UQ_founder
	GO
	
--add / remove a foreign key
CREATE PROC change6
	AS
		ALTER TABLE Animals DROP CONSTRAINT FK_Animals_Student
		ALTER TABLE Animals DROP Column stud_id
	GO

CREATE PROC original6
	AS
		ALTER TABLE Animals ADD stud_id INT
		ALTER TABLE Animals ADD CONSTRAINT FK_Animals_Student FOREIGN KEY(stud_id) REFERENCES Student(stud_id)
	GO

-- create / remove a table
CREATE PROC change7
	AS
		CREATE TABLE Something(
			col1 VARCHAR(10),
			COL2 INT,
			COL3 INT)
	GO

CREATE PROC original7
	AS
		DROP TABLE Something
	GO

--create table of versions
CREATE TABLE Table_Version (table_ver INT) 
INSERT INTO Table_Version VALUES (0) 
GO

CREATE PROC getVers (@vers INT)
	AS
		BEGIN
			IF @vers < 0 or @vers > 7
				PRINT 'Table versions between 1 and 7'
			ELSE
				BEGIN
					DECLARE @current INT
					DECLARE @procedure_name VARCHAR(20)
					SET @current = (SELECT T.table_ver FROM Table_Version T)
					WHILE @current<@vers
						BEGIN
							SET @current = (@current + 1)
							SET @procedure_name = 'change' + CONVERT(VARCHAR(10), @current)
							PRINT @procedure_name
							EXECUTE @procedure_name
						END
					WHILE @current>@vers
						BEGIN
							SET @procedure_name = 'original' + CONVERT(VARCHAR(10), @current)
							PRINT @procedure_name
							EXECUTE @procedure_name
							SET @current = (@current - 1)
						END
					UPDATE Table_Version SET table_ver = @vers
				END
		END
	GO
