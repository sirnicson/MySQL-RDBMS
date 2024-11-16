# MySQL College Database Project

## Overview

This project involves creating a MySQL database for managing a college's administrative operations, including handling admins, teachers, students, courses, course allocation, registration, and grading. The database was built using mysql command-line client 6.5.1 and supports CRUD operations, allowing for efficient management of courses and user roles.

## Features

- Admin management (CRUD operations for admins, teachers, and students)
- Course management (define available courses for each semester)
- Course enrollment for students
- Grading system for teachers to update student statuses (pass/fail)

## Database Schema

The database consists of the following tables:

Admins (
        ID INT PRIMARY KEY,
        first_name VARCHAR(20) NOT NULL,
        last_name VARCHAR(20) NOT NULL,
        birth_date DATE,
        gender ENUM('Male', 'Female') NOT NULL,
        email VARCHAR(255) UNIQUE NOT NULL,
        address VARCHAR(255)
);

Teachers (
        ID INT PRIMARY KEY,
        first_name VARCHAR(20) NOT NULL,
        last_name VARCHAR(20) NOT NULL,
        birth_date DATE,
        gender ENUM('Male', 'Female') NOT NULL,
        email VARCHAR(255) UNIQUE NOT NULL,
        address VARCHAR(255)
);

Students (
        ID INT PRIMARY KEY,
        first_name VARCHAR(20) NOT NULL,
        last_name VARCHAR(20) NOT NULL,
        birth_date DATE,
        gender ENUM('Male', 'Female') NOT NULL,
        email VARCHAR(255) UNIQUE NOT NULL,
        address VARCHAR(255),
        enrollment_year INT
);

Courses (
        ID INT PRIMARY KEY,
        course_name VARCHAR(255),
        semester VARCHAR(10),
        is_offered BOOLEAN,
        admin_id INT,
        FOREIGN KEY (admin_id) REFERENCES Admins(ID)
);

Course_Allocation (
        course_id INT,
        teacher_id INT,
        admin_id INT,
        PRIMARY KEY (course_id, teacher_id),
        FOREIGN KEY (course_id) REFERENCES Courses(ID),
        FOREIGN KEY (teacher_id) REFERENCES Teachers(ID),
        FOREIGN KEY (admin_id) REFERENCES Admins(ID)
);

Course_Registration (
        student_id INT,
        course_id INT,
        registration_date DATE,
        PRIMARY KEY (student_id, course_id),
        FOREIGN KEY (student_id) REFERENCES Students(ID),
        FOREIGN KEY (course_id) REFERENCES Courses(ID)
);

Grading (
        student_id INT,
        course_id INT,
        grade ENUM('Pass', 'Fail'),
        teacher_id INT,
        PRIMARY KEY (student_id, course_id, teacher_id),
        FOREIGN KEY (student_id) REFERENCES Students(ID),
        FOREIGN KEY (course_id) REFERENCES Courses(ID),
        FOREIGN KEY (teacher_id) REFERENCES Teachers(ID)
);

## Using the Backup file
- Open the terminal and log in to MySQL
```bash
mysql -u root -p
```

- Create a new database to restore the backup into, or use an existing database
```bash
CREATE DATABASE college_database;
```
- Exit MySQL and use the following command to restore:
```bash
mysql -u root -p college_database < college_database_backup.sql
```
After restoring, the database will be ready with the data from the backup file.

