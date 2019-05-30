ALTER TABLE Student
ADD CONSTRAINT FK_Student_House FOREIGN KEY(house_id) REFERENCES House(house_id)

ALTER TABLE Student
ADD CONSTRAINT FK_Student_Broom FOREIGN KEY(broom_id) REFERENCES Broom(broom_id)

ALTER TABLE Animals
ADD CONSTRAINT FK_Animals_Student FOREIGN KEY(stud_id) REFERENCES Student(stud_id)

ALTER TABLE Book
ADD CONSTRAINT FK_Book_Class FOREIGN KEY(class_id) REFERENCES Class(class_id)

ALTER TABLE Class
ADD CONSTRAINT FK_Class_Teacher FOREIGN KEY(teacher_id) REFERENCES Teacher(teacher_id)

ALTER TABLE Attends
ADD CONSTRAINT FK_Attends_Students FOREIGN KEY(stud_id) REFERENCES Student(stud_id)

ALTER TABLE Attends
ADD CONSTRAINT FK_Attends_Class FOREIGN KEY(class_id) REFERENCES Class(class_id)

ALTER TABLE Wand_Owners
ADD CONSTRAINT FK_Wand_Owners_Student FOREIGN KEY(stud_id) REFERENCES Student(stud_id)

ALTER TABLE Wand_Owners
ADD CONSTRAINT FK_Wand_Owners_Wand FOREIGN KEY(wand_id) REFERENCES Wand(wand_id)

ALTER TABLE Spell
ADD CONSTRAINT FK_Spell_Class FOREIGN KEY(class_id) REFERENCES Class(class_id)
