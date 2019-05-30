alter table Student
drop constraint FK_Student_House

alter table Student
drop constraint FK_Student_Broom

alter table Animals
drop constraint FK_Animals_Student

alter table Book
drop constraint FK_Book_Class

alter table Class
drop constraint FK_Class_Teacher

alter table Attends
drop constraint FK_Attends_Students

alter table Attends
drop constraint FK_Attends_Class

alter table Wand_Owners
drop constraint FK_Wand_Owners_Student

alter table Wand_Owners
drop constraint FK_Wand_Owners_Wand

alter table Spell
drop constraint FK_Spell_Class


drop table Animals

drop table Attends

drop table Book

drop table Broom

drop table Class

drop table House

drop table Spell

drop table Student

drop table Teacher

drop table Wand

drop table Wand_Owners
