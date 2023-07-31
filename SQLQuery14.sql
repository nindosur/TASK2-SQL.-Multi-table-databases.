--1. 
SELECT * 
FROM Teachers, Groups;

--2. 
SELECT Faculties.Name, Departments.Financing AS DepFinancing
FROM Faculties
JOIN Departments ON Departments.FacultyId = Faculties.Id
WHERE Departments.Financing > Faculties.Financing;

--3. 
SELECT Curators.Surname, Groups.Name AS GroupName
FROM Curators
JOIN GroupsCurators ON GroupsCurators.CuratorId = Curators.Id
JOIN Groups ON Groups.Id = GroupsCurators.GroupId;

--4. 
SELECT Teachers.Name, Teachers.Surname
FROM Teachers
JOIN Lectures ON Lectures.TeacherId = Teachers.Id
JOIN GroupsLectures ON GroupsLectures.LectureId = Lectures.Id
JOIN Groups ON Groups.Id = GroupsLectures.GroupId
WHERE Groups.Name = 'ПИ-201';

--5
SELECT Teachers.Surname, Faculties.Name
FROM Teachers, Faculties, Lectures
WHERE Teachers.Id = Lectures.TeacherId AND Lectures.SubjectId = Faculties.Id

--6 
SELECT Departments.Name, Groups.Name
FROM Departments
JOIN Groups ON Groups.DepartmentId = Departments.Id;

--7
SELECT Subjects.Name
FROM Teachers
JOIN Lectures ON Lectures.TeacherId = Teachers.Id
JOIN Subjects ON Subjects.Id = Lectures.SubjectId
WHERE Teachers.Name = 'Артем' AND Teachers.Surname = 'Соколов';

--8
SELECT Departments.Name
FROM Departments, Subjects, Lectures
WHERE Departments.Id = Lectures.SubjectId AND Subjects.Name = 'Базы данных'

--9
SELECT Groups.Name
FROM Groups
JOIN Departments ON Departments.Id = Groups.DepartmentId
JOIN Faculties ON Faculties.Id = Departments.FacultyId
WHERE Faculties.Name = 'Факультет инженерии';

--10
SELECT Groups.Name, Faculties.Name
FROM Groups
JOIN Departments ON Departments.Id = Groups.DepartmentId
JOIN Faculties ON Faculties.Id = Departments.FacultyId
WHERE Groups.Year = 5;

--11
SELECT Teachers.Name, Teachers.Surname, Subjects.Name, Groups.Name
FROM Teachers
JOIN Lectures ON Lectures.TeacherId = Teachers.Id
JOIN GroupsLectures ON GroupsLectures.LectureId = Lectures.Id
JOIN Groups ON Groups.Id = GroupsLectures.GroupId
JOIN Subjects ON Subjects.Id = Lectures.SubjectId
WHERE Lectures.LectureRoom = '101';