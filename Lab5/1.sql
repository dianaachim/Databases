--create database Lab5

if OBJECT_ID('ReadBy', 'U') IS NOT NULL
	drop table ReadBy
if OBJECT_ID('Readers', 'U') IS NOT NULL
	drop table Readers
if OBJECT_ID('Books', 'U') IS NOT NULL
	drop table Books

create table Books
	(bid int primary key,
	nr_pages int unique,
	title varchar(50))

create table Readers
	(rid int primary key,
	nr_books int,
	name varchar(50))

create table ReadBy
	(rbid int primary key,
	bid int foreign key references Books(bid),
	rid int foreign key references Readers(rid))

insert into Books values 
	(1, 100, 'Hunger Games'),
	(2, 200, 'Red Rising'),
	(3, 300, 'Six of Crows'),
	(4, 400, 'Way of Kings'),
	(5, 500, 'Animal Farm'),
	(6, 600, 'Game of thrones')

insert into Books values
	(7, 700, 'Way of Kings'),
	(8, 800, 'Game of thrones')

insert into Readers values
	(1, 50, 'Diana'),
	(2, 10, 'Gerlinde'),
	(3, 40, 'Irina'),
	(4, 20, 'Mihaela'),
	(5, 15, 'Maria'),
	(6, 30, 'Andrada')

insert into Readers values
	(7, 10, 'Alex'),
	(8, 20, 'Cristi'),
	(9, 40, 'Erika')

insert into ReadBy values
	(1, 3, 2),
	(2, 1, 6),
	(3, 2, 5),
	(4, 6, 3),
	(5, 4, 1),
	(6, 5, 4)

