# MySQL College Database Project

## Overview

This project involves creating a MySQL database for managing a college's administrative operations, including handling admins, teachers, students, courses, course enrollment, and grading. The database supports CRUD operations and allows for efficient management of courses and user roles.

## Features

- Admin management (CRUD operations for admins, teachers, and students)
- Course management (define available courses for each semester)
- Course enrollment for students
- Grading system for teachers to update student statuses (pass/fail)

## Database Schema

The database consists of the following tables:

1. **Admins**
   - `ID` (INTEGER, Primary Key)
   - `name` (VARCHAR)
   - `email` (VARCHAR)

2. **Teachers**
   - `ID` (INTEGER, Primary Key)
   - `name` (VARCHAR)
   - `email` (VARCHAR)

3. **Students**
   - `ID` (INTEGER, Primary Key)
   - `name` (VARCHAR)
   - `email` (VARCHAR)
   - `enrollment_year` (YEAR)

4. **Courses**
   - `ID` (INTEGER, Primary Key)
   - `course_name` (VARCHAR)
   - `semester` (VARCHAR)
   - `is_offered` (BOOLEAN)
   - `created_by` (INTEGER, Foreign Key references `Admins.ID`)

5. **Course_Allocation**
   - `course_id` (INTEGER, Foreign Key references `Courses.ID`)
   - `teacher_id` (INTEGER, Foreign Key references `Teachers.ID`)
   - `assigned_by` (INTEGER, Foreign Key references `Admins.ID`)
   - Primary Key: (`course_id`, `teacher_id`)

6. **Course_Registration**
   - `ID` (INTEGER, Primary Key)
   - `student_id` (INTEGER, Foreign Key references `Students.ID`)
   - `course_id` (INTEGER, Foreign Key references `Courses.ID`)
   - `enrollment_date` (DATE)

7. **Grading**
   - `reg_id` (INTEGER, Foreign Key references `Course_Registration.ID`)
   - `grade` (ENUM('Pass', 'Fail'))
   - `graded_by` (INTEGER, Foreign Key references `Teachers.ID`)
   - Primary Key: (`reg_id`, `graded_by`)

## Getting Started

### Prerequisites

- MySQL installed on your local machine
- Access to a Linux terminal
- Basic knowledge of SQL

### Installation

1. Clone the repository
2. cd into repository
3. run MySQL in your terminal or run script in MySQL Workbench
4. Run the setup.sql to create tables
5. Populate tables with data
