
-- 
SELECT T.teacher_id
FROM Teacher T
WHERE T.age<100
UNION
Select C.teacher_id
FROM Class C
WHERE C.nr_stud <16

SELECT B.class_id
FROM Book B
WHERE B.year<1950
UNION
SELECT C.class_id
FROM Class C
WHERE C.nr_stud>20
--

SELECT S.fname, S.lname
FROM Student S, Wand W, Wand_Owners O
WHERE s.stud_id=O.stud_id AND O.wand_id=W.wand_id AND (W.core = 'Unicorn hair' OR W.core = 'Veela hair')

SELECT T.teacher_id
FROM Teacher T, Class C
WHERE T.teacher_id=C.teacher_id AND C.credits=5
INTERSECT
SELECT T2.teacher_id
FROM Teacher T2, Class C2
WHERE T2.teacher_id=C2.teacher_id AND C2.credits=10

SELECT S.stud_id
FROM Student S
WHERE S.stud_id IN 
	(SELECT A.stud_id
	FROM Attends A
	WHERE A.class_id=80)

SELECT T.teacher_id
FROM Teacher T, Class C
WHERE T.teacher_id=C.teacher_id AND C.credits=5
EXCEPT
SELECT T2.teacher_id
FROM Teacher T2, Class C2
WHERE T2.teacher_id=C2.teacher_id AND C2.credits=10

SELECT S.stud_id
FROM Student S
WHERE S.stud_id NOT IN
	(SELECT A.stud_id
	FROM Attends A
	WHERE A.class_id=85)


SELECT Distinct T.fname, T.lname, C.subject
FROM Teacher T INNER JOIN Class C ON T.teacher_id=C.teacher_id

SELECT *
FROM Student S LEFT JOIN Animals A ON A.stud_id=S.stud_id

SELECT DISTINCT S.name, C.subject, T.fname, T.lname
FROM Class C RIGHT JOIN Spell S ON S.class_id=C.class_id RIGHT JOIN Teacher T ON C.teacher_id=T.teacher_id

--
SELECT *
FROM Student S FULL JOIN Animals A ON A.stud_id=S.stud_id
--

SELECT S.stud_id
FROM Student S
WHERE S.stud_id IN 
	(SELECT A.stud_id
	FROM Attends A
	WHERE A.class_id IN 
		(SELECT C.class_id
		FROM Class C
		WHERE C.credits=10))

SELECT DISTINCT S.fname, S.lname
FROM Student S
WHERE EXISTS ( SELECT *
				FROM Wand_Owners O
				WHERE O.wand_id=30 AND O.stud_id=S.stud_id)

SELECT S.fname, S.lname
FROM Student S
WHERE EXISTS ( SELECT *
				FROM Attends A
				WHERE A.class_id=82 AND A.stud_id = S.stud_id)

SELECT S.*
FROM Student S INNER JOIN
	(SELECT *
	FROM Attends A
	WHERE A.class_id=82) T
ON S.stud_id=T.stud_id

SELECT S.*
FROM Student S INNER JOIN
	(SELECT *
	FROM Wand_Owners O
	WHERE O.wand_id=37) T
ON S.stud_id=T.stud_id

SELECT B.name
FROM Book B
WHERE B.year>1900
GROUP BY B.name
HAVING COUNT(*)<=1

SELECT C.subject, AVG(C.NR_STUD) AS AvgStud
FROM Class C
WHERE C.credits<10
GROUP BY C.subject
HAVING 1>= (SELECT COUNT(*)
			FROM Class C2
			WHERE C2.subject=C.subject)

SELECT T.fname
FROM Teacher T
WHERE T.age<80
GROUP BY T.fname

SELECT B.name, MAX(B.price)
FROM Broom B
WHERE B.shop='Ellerby and Spudmore'
GROUP BY B.name
HAVING 200< (SELECT MIN(B2.PRICE)
			FROM Broom B2
			WHERE B2.name=B.name)


SELECT S.name
FROM Spell S
WHERE S.class_id = ANY
	(SELECT S.class_id
	FROM Spell S2
	WHERE S.type='charm')

select S.name
FROM Spell S
WHERE S.class_id IN 
	(SELECT S.class_id
	FROM Spell S2
	WHERE S.type='charm')

SELECT W.wand_id
FROM Wand W
WHERE W.flexibility > ANY
	(SELECT W2.flexibility
	FROM Wand W2
	WHERE W2.core='Dragon Heartstring')

SELECT W.wand_id
FROM Wand W
WHERE W.flexibility <> ALL
	(SELECT W2.flexibility
	FROM Wand W2
	WHERE W2.core = 'Phoenix Feather')

SELECT W.wand_id
FROM Wand W
WHERE W.flexibility NOT IN
	(SELECT W2.flexibility
	FROM Wand W2
	WHERE W2.core = 'Phoenix Feather')

SELECT C.subject
FROM Class C
WHERE C.credits > ALL
	(SELECT C2.credits
	FROM Class C2
	WHERE C2.subject='Charms')

