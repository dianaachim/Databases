CREATE TABLE House
	(house_id INT PRIMARY KEY,
	name VARCHAR(20) UNIQUE,
	nr_stud INT,
	founder VARCHAR(50),
	ghost VARCHAR(50),
	element VARCHAR(50))

CREATE TABLE Broom
	(broom_id INT PRIMARY KEY,
	name VARCHAR(30),
	shop Varchar(30),
	price DECIMAL(10,2))
	
CREATE TABLE Wand
	(wand_id INT PRIMARY KEY,
	wood VARCHAR(50),
	core VARCHAR(50),
	flexibility INT,
	shop VARCHAR(50))

CREATE TABLE Book
	(book_id INT PRIMARY KEY,
	name VARCHAR(200),
	author VARCHAR(100),
	genre VARCHAR(20),
	year INT,
	class_id INT)

CREATE TABLE Spell
	(spell_id INT PRIMARY KEY,
	name VARCHAR(20),
	type VARCHAR(50),
	class_id INT)

CREATE TABLE Student
	(stud_id INT PRIMARY KEY,
	fname VARCHAR(50),
	lname VARCHAR(50),
	house_id INT,
	broom_id INT,
	address VARCHAR(50))

CREATE TABLE Teacher
	(teacher_id INT PRIMARY KEY,
	fname VARCHAR(50),
	lname VARCHAR(50),
	age INT)

CREATE TABLE Class
	(class_id INT PRIMARY KEY,
	subject VARCHAR(50),
	teacher_id INT,
	nr_stud INT,
	credits INT,
	room CHAR(10))

CREATE TABLE Animals
	(animal_id INT PRIMARY KEY,
	name VARCHAR(50) UNIQUE,
	species VARCHAR(20),
	stud_id INT)
	
CREATE TABLE Attends
	(stud_id INT,
	class_id INT,
	CONSTRAINT PK_Attends PRIMARY KEY(stud_id, class_id))

CREATE TABLE Wand_Owners
	(wand_id INT,
	stud_id INT,
	start_year INT,
	end_year INT,
	CONSTRAINT PK_Wand_Owners PRIMARY KEY(wand_id, stud_id))
