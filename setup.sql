-- Create database
CREATE DATABASE college_database;

-- Use the database
USE college_database;

-- Create tables
CREATE TABLE Admins (
	ID INT PRIMARY KEY,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	birth_date DATE,
	gender ENUM('Male', 'Female') NOT NULL,
	email VARCHAR(255) UNIQUE NOT NULL,
	address VARCHAR(255)
);

CREATE TABLE Teachers (
	ID INT PRIMARY KEY,
	first_name VARCHAR(20) NOT NULL,
        last_name VARCHAR(20) NOT NULL,
        birth_date DATE,
        gender ENUM('Male', 'Female') NOT NULL,
        email VARCHAR(255) UNIQUE NOT NULL,
        address VARCHAR(255)
);

CREATE TABLE Students (
	ID INT PRIMARY KEY,
	first_name VARCHAR(20) NOT NULL,
        last_name VARCHAR(20) NOT NULL,
        birth_date DATE,
        gender ENUM('Male', 'Female') NOT NULL,
        email VARCHAR(255) UNIQUE NOT NULL,
        address VARCHAR(255),
	enrollment_year INT
);

CREATE TABLE Courses (
	ID INT PRIMARY KEY,
	course_name VARCHAR(255),
	semester VARCHAR(10),
	is_offered BOOLEAN,
	admin_id INT,
	FOREIGN KEY (admin_id) REFERENCES Admins(ID)
);

CREATE TABLE Course_Allocation (
	course_id INT,
	teacher_id INT,
	admin_id INT,
	PRIMARY KEY (course_id, teacher_id),
	FOREIGN KEY (course_id) REFERENCES Courses(ID),
	FOREIGN KEY (teacher_id) REFERENCES Teachers(ID),
	FOREIGN KEY (admin_id) REFERENCES Admins(ID)
);

CREATE TABLE Course_Registration (
	student_id INT,
	course_id INT,
	registration_date DATE,
	PRIMARY KEY (student_id, course_id),
        FOREIGN KEY (student_id) REFERENCES Students(ID),
        FOREIGN KEY (course_id) REFERENCES Courses(ID)
);

CREATE TABLE Grading (
	student_id INT,
	course_id INT,
	grade ENUM('Pass', 'Fail'),
	teacher_id INT,
	PRIMARY KEY (student_id, course_id, teacher_id),
	FOREIGN KEY (student_id) REFERENCES Students(ID),
	FOREIGN KEY (course_id) REFERENCES Courses(ID),
	FOREIGN KEY (teacher_id) REFERENCES Teachers(ID)
);
