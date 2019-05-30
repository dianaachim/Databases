INSERT INTO House VALUES 
(10, 'Gryffindor', 200, 'Godric Gryffindor', 'Nearly Headless Nick', 'fire'),
(11, 'Ravenclaw', 165, 'Rowena Ravenclaw', 'The Grey Lady', 'air'),
(12, 'Slytherine', 200, 'Salazar Slytherine', 'Bloody Baron', 'water'),
(13, 'Hufflepuff', 230, 'Helga Hufflepuff', 'Fat Friar', 'earth');

INSERT INTO Broom VALUES
(20, 'Nimbus 2000', 'Ellerby and Spudmore', 500),
(21, 'Air Wave Gold', 'Flyte and Barker', 150),
(22, 'Australian Flyabout', 'Universal Brooms Ltd', 230),
(23, 'Comet260', 'Comet Trading Company', 400),
(24, 'Cleansweep Eleven', 'Cleansweep Broom Comp.', 470),
(25, 'Moontrimer', 'Ellerby and Spudmore', 350),
(26, 'Firebolt', 'Flyte and Barker', 390),
(28, 'Oakshaft', 'Universal Brooms Ltd', 190);

INSERT INTO Wand VALUES
(30, 'Acacia', 'Unicorn hair', 7, 'Ollivander`s'),
(31, 'Blackthorn', 'Dragon heartstring', 5, 'Ollivander`s'),
(32, 'Elm', 'Phoenix feather', 8, 'Ollivander`s'),
(33, 'Willow', 'Basilisk horn', 10, 'Ollivander`s'),
(34, 'Rosewood', 'Wampus cat hair', 3, 'Ollivander`s'),
(35, 'Blackthorn', 'Veela hair', 5, 'Ollivander`s'),
(36, 'Elm', 'Unicorn hair', 8, 'Ollivander`s'),
(37, 'Rosewood', 'Phoenix feather', 3, 'Ollivander`s');

INSERT INTO Teacher VALUES
(70, 'Albus', 'Dumbledore', 100),
(71, 'Minerva', 'McGonagall', 75),
(72, 'Severus', 'Snape', 80),
(73, 'Pomona', 'Sprout', 60),
(74, 'Filius', 'Flitwick', 50),
(75, 'Rolanda', 'Hooch', 35);

INSERT INTO Class VALUES
(80, 'Charms', 74, 30, 6, 'A302'),
(81, 'Transfiguration', 71, 22, 10, 'A109'),
(82, 'Potions', 72, 15, 3, 'C400'),
(83, 'History of magic', 70, 50, 5, 'Z001'),
(84, 'Defense against dark arts', 72, 10, 20, 'C101'),
(85, 'Flying', 75, 20, 7, NULL),
(86, 'Herbology', 73, 40, 2, 'greenhouse'),
(87, 'Divination', 71, 15, 5, 'M250');

INSERT INTO Book VALUES
(40, 'The standard book of spells, grade 1', 'Miranda Goshawk', 'basic spells', 1990, 80),
(41, 'A history of magic', 'Bathilda Bagshot', 'history', 1947, 83),
(42, 'Magical Theory', 'Adalbert Waffling', 'magical theory', 1990, 81),
(43, 'A beginner`s guide to transfiguration', 'Emeric Switch', 'transfiguration', 1982, 81),
(44, '1001 magical herbs and fungi', 'Phyllda Spore', 'herbology', 1403, 86),
(45, 'Magical drafts and Potions', 'Arsenius Jigger', 'potions', 1903, 84),
(46, 'The dark forces. A guide to self protection', 'Quentine Trimble', 'defense', 1986, 84);

INSERT INTO Spell VALUES
(50, 'Aberto', 'charm', 80),
(51, 'Cantis', 'jinx', 84),
(52, 'Finite', 'counter spell', 84),
(53, 'Imperio', 'curse', 84),
(54, 'Switching Spell', 'charm', 80),
(55, 'Lumos', 'charm', 80),
(56, 'Multicoreforce', 'transfiguration', 81),
(57, 'Periculum', 'charm', 80),
(58, 'Sectumsempra', 'curse', 84),
(59, 'Spongify', 'charm', 80);

INSERT INTO Student VALUES
(60, 'Harry', 'Potter', 10, 20, 'Tulip Street 2'),
(61, 'Ron', 'Weasly', 10, 28, 'the Burrow'),
(62, 'Hermione', 'Granger', 10, 23, 'Ceetham Hillroad 2'),
(63, 'Luna', 'Lovegood', 11, 21, 'Oxford Road A29'),
(64, 'Cho', 'Chang', 11, 28, 'Cannon Street 130'),
(65, 'Padma', 'Patil', 11, 25, 'Stark Street B300'),
(66, 'Draco', 'Malfoy', 12, 22, 'Malfoy Manner'),
(67, 'Regulus', 'Black', 12, 26, 'King`s Road H12'),
(68, 'Cedric', 'Diggory', 13, 23, 'Bread Street 212'),
(69, 'Anthony', 'Ricket', 13, 22, 'Picket Street 83');


INSERT INTO Animals VALUES
(90, 'Fluffy', 'cat', 62),
(91, 'Hedwig', 'owl', 60),
(92, 'Muffin', 'cat', 63),
(93, 'Tooder', 'frog', 69),
(94, 'Scabbers', 'rat', 66),
(95, 'Booha', 'owl', 64);

INSERT INTO Attends VALUES
(60, 82),
(61, 87),
(62, 85),
(63, 80),
(64, 85),
(65, 81),
(66, 83),
(67, 84),
(68, 86),
(69, 82),
(60, 87),
(61, 85),
(62, 80),
(63, 81),
(64, 83),
(65, 84),
(66, 86),
(67, 86),
(68, 84),
(69, 83),
(60, 85),
(62, 87),
(64, 86),
(66, 80),
(68, 82);

INSERT INTO Wand_Owners VALUES
(30, 60, 2000, 2010),
(31, 61, 2005, 2009),
(32, 62, 1990, 2015),
(33, 63, 2001, 2003),
(34, 64, 2013, 2018),
(35, 65, 1998, 2005),
(36, 66, 1999, 2000),
(37, 67, 2008, 2018),
(30, 68, 2011, 2018),
(31, 60, 2011, 2018),
(35, 62, 2016, 2018),
(33, 69, 2004, 2009),
(33, 64, 2010, 2012),
(36, 61, 2000, 2004),
(37, 66, 2000, 2007);
/*
INSERT INTO Animals VALUES
(99, 'Booha', 'cat', 61);
*/

/*
UPDATE Teacher
SET age = age + 1
WHERE teacher_id = 70

UPDATE Class
SET nr_stud = 20
WHERE class_id = 84

UPDATE Broom
SET shop = 'Ellerby and Spudmore'
WHERE broom_id = 28


DELETE
FROM Animals
WHERE species LIKE 'fro_'

DELETE
FROM Spell
WHERE spell_id = 59
*/