#answer1 -Get all the names of students in the database
SELECT name FROM students;
#answer2-Get all the data of students above 30 years old
SELECT * FROM students WHERE age > 30;
#answer3-Get the names of the females who are 30 years old
SELECT Name FROM Students WHERE Age = 30 AND Gender = 'Female';
#answer4-Get the number of Points of Alex
SELECT Points FROM Students WHERE Name = 'Alex';
#answer5-Add yourself as a new student (your name, your age...)
INSERT INTO Students (ID,Name, Age, Gender, Points)
VALUES (6,'Zahraa', 21, 'Female', 130);
#answer6-Increase the points of Basma because she solved a new exercise
UPDATE Students
SET Points = Points + 20
WHERE Name = 'Basma';
#answer7-Decrease the points of Alex because he's late today
UPDATE Students
SET Points = Points - 20
WHERE Name = 'Alex';
#create-table-Copy Layal's data from students to graduates
CREATE TABLE graduates (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Name TEXT NOT NULL UNIQUE,
    Age INTEGER,
    Gender TEXT,
    Points INTEGER,
    Graduation date
);
#Copy Layal's data from students to graduates 
INSERT INTO graduates (Name, Age, Gender, Points, Graduation-date)
SELECT Name, Age, Gender, Points, '08/09/2018'
FROM students
WHERE Name = 'Layal';
#Remove Layal's record from students
DELETE * from students where name='Layal';
#join Produce a table that contains, for each employee, his/her name, company name, and company date.
SELECT *
FROM (
    SELECT employees.Name AS EmployeeName, Companies.Name AS CompanyName, Companies.Date
    FROM employees
    INNER JOIN Companies
    ON employees.ID = Companies.ID
) AS Employeecompanytable;
#Find the name of employees that work in companies made before 2000.
SELECT EmployeeName
FROM EmployeeCompanytable
WHERE Date < 2000;
#Find the name of company that has a graphic designer.
SELECT CompanyName
FROM EmployeeCompanytable
WHERE Role = 'Graphic Designer';
#count-filter-Find the person with the highest number of points in students
SELECT name
FROM students
WHERE points = (SELECT MAX(points) FROM students);
#Find the average of points in students
SELECT AVG(points)
FROM students;
#Find the number of students that have 500 points
SELECT COUNT(*)
FROM students
WHERE points = 500;
#Find the names of students that contains 's'
SELECT name
FROM students
WHERE name LIKE '%s%';
#Find all students based on the decreasing order of their points
SELECT *
FROM students
ORDER BY points DESC;
