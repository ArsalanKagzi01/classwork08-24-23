create table Student(
StudentID int primary key,
Student_Name varchar(255)
);

insert into Student values (1001,'Mary'),(1002,'Jane'),(1003,'Daniel'),(1004,'Jack'),(1005,'Harold');

create table Course(
CourseID int primary key,
Course_Name varchar(255),
StudentID int,
foreign key Course(StudentID) references Student(StudentID)
);

insert into Course value (5001,'PHP',1004),(5002,'JAVA',1001),(5003,'ASP.NET',1001),(5004,'RUBY',1002);

create table Teacher(
TeacherID int primary key,
Teacher_Name varchar(255),
CourseID int,
foreign key Teacher(CourseID) references Course(CourseID)
);

insert into Teacher values (3001,'Jill',5003),(3002,'Greul',5002),(3003,'Jemkins',5001),(3004,'Polo',5004);



SELECT * FROM Student INNER JOIN Course ON Student.StudentID = Course.StudentID INNER JOIN Teacher ON Course.CourseID = Teacher.CourseID;
select s.StudentID, s.Student_Name, c.Course_Name, t.Teacher_Name from Student as s INNER JOIN Course as c ON s.StudentID = c.StudentID INNER JOIN Teacher as t ON c.CourseID = t.CourseID WHERE Course_Name = 'ASP.NET';
SELECT * FROM Student CROSS JOIN Course ON Student.StudentID = Course.StudentID;
SELECT * FROM Student LEFT JOIN Course ON Student.StudentID = Course.StudentID;
SELECT * FROM Student RIGHT JOIN Course ON Student.StudentID = Course.StudentID;
SELECT * FROM Student INNER JOIN Course ON Student.StudentID = Course.StudentID;

