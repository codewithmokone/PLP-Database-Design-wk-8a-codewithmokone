-- Question 1: Build a Complete Database Management System

-- Creating Database
CREATE DATABASE StudentRecords;

-- Departments Table
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentName VARCHAR(100) NOT NULL UNIQUE
);

-- Student Profile Table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- Courses Table
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY AUTO_INCREMENT,
    CourseName VARCHAR(100) NOT NULL,
    Credits INT NOT NULL,
    DepartmentID INT NOT NULL,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

--Sample Data
-- Departments data
INSERT INTO Departments (DepartmentName) VALUES 
('Computer Science'),
('Mathematics');

-- Student data
INSERT INTO Students (FirstName, LastName, Email, DepartmentID) VALUES 
('Alicia', 'Keys', 'aliciakeysh@main.com', 1),
('Ace', 'Lee', 'acelee@mail.com', 2);

-- Courses data
INSERT INTO Courses (CourseName, Credits, DepartmentID) VALUES 
('Computer Science', 4, 1),
('Mathematics', 3, 2);