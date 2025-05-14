-- Build a Complete Database Management System

-- Creating the StudentRecords database
CREATE DATABASE StudentRecords;

-- Creating the Departments table to store department information
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,    -- Unique identifier for each department
    DepartmentName VARCHAR(100) NOT NULL UNIQUE     -- Department name
);

-- Creating the Student's table to store student profiles
CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,       -- Unique identifier for each student
    FirstName VARCHAR(50) NOT NULL,                 -- Student's first name
    LastName VARCHAR(50) NOT NULL,                  -- Student's last name
    Email VARCHAR(100) NOT NULL UNIQUE,             -- Student's email
    DepartmentID INT,                               -- Foreign key linking student to a department
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID) -- Ensures valid department reference
);

-- Creating the Course table to store course details
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY AUTO_INCREMENT,        -- Unique identifier for each course
    CourseName VARCHAR(100) NOT NULL,               -- Name of the course
    Credits INT NOT NULL,                           -- Number of credit hours
    DepartmentID INT NOT NULL,                      -- Foreign key linking course to a department
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID) -- Ensures valid department reference
);

-- Inserting sample data into the Departments table
INSERT INTO Departments (DepartmentName) VALUES 
('Computer Science'),   -- Department 1
('Mathematics');        -- Department 2

-- Inserting sample data into the Student records
INSERT INTO Students (FirstName, LastName, Email, DepartmentID) VALUES 
('Alicia', 'Keys', 'aliciakeysh@main.com', 1),  -- Student in Computer Science
('Ace', 'Lee', 'acelee@mail.com', 2);           -- Student in Mathematics

-- Inserting sample Course records
INSERT INTO Courses (CourseName, Credits, DepartmentID) VALUES 
('Computer Science', 4, 1), -- Course under Computer Science department
('Mathematics', 3, 2);  -- Course ubder Mathematics department