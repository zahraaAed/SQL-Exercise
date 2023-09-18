#answer1
SELECT name FROM students;
#answer2
SELECT * FROM students WHERE age > 30;
#answer3
SELECT Name FROM Students WHERE Age = 30 AND Gender = 'Female';
#answer4
SELECT Points FROM Students WHERE Name = 'Alex';
#answer5
INSERT INTO Students (ID,Name, Age, Gender, Points)
VALUES (6,'Zahraa', 21, 'Female', 130);
#answer6
UPDATE Students
SET Points = Points + 20
WHERE Name = 'Basma';
#answer7
UPDATE Students
SET Points = Points - 20
WHERE Name = 'Alex';
#answer8
