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
#create-table
CREATE TABLE graduates (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Name TEXT NOT NULL UNIQUE,
    Age INTEGER,
    Gender TEXT,
    Points INTEGER,
    Graduation date
);

INSERT INTO graduates (Name, Age, Gender, Points, Graduation-date)
SELECT Name, Age, Gender, Points, '08/09/2018'
FROM students
WHERE Name = 'Layal';
DELETE * from students where name='Layal';
