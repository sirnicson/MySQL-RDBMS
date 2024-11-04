-- Create database
CREATE DATABASE college_database;

-- Use the database
USE college_database;

-- Create tables
CREATE TABLE Admins (
	ID INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(255) NOT NULL,
	email VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE Teachers (
	ID INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(255) NOT NULL,
	email VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE Students (
	ID INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(255) NOT NULL,
	email VARCHAR(255) UNIQUE NOT NULL,
	enrollment_year INT NOT NULL
);

CREATE TABLE Courses (
	ID INT PRIMARY KEY AUTO_INCREMENT,
	course_name VARCHAR(255),
	semester VARCHAR(10),
	is_offered BOOLEAN,
	created_by INT,
	FOREIGN KEY (created_by) REFERENCES Admins(ID)
);

CREATE TABLE Course_Allocation (
	course_id INT,
	teacher_id INT,
	assigned_by INT,
	PRIMARY KEY (course_id, teacher_id),
	FOREIGN KEY (course_id) REFERENCES Courses(ID),
	FOREIGN KEY (teacher_id) REFERENCES Teachers(ID),
	FOREIGN KEY (assigned_by) REFERENCES Admins(ID)
);

CREATE TABLE Course_Registration (
	ID INT PRIMARY KEY AUTO_INCREMENT,
	student_id INT,
	course_id INT,
	registration_date DATE
);

CREATE TABLE Grading (
	reg_id INT,
	grade ENUM('Pass', 'Fail'),
	graded_by INT,
	PRIMARY KEY (reg_id, graded_by),
	FOREIGN KEY (reg_id) REFERENCES Course_Registration(ID),
	FOREIGN KEY (graded_by) REFERENCES Teachers(ID)
);
