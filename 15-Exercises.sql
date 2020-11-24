-- 15-Exercises

-- 1) Create a new database called "School" this database should have two tables: teachers and students.
-- students table should have columns for student_id, first_name, last_name, homeroom_number, phone, email, and graduation year.
-- teachers table should have columns for teacher_id, first_name, last_name, homeroom_number, department, email, and phone.
-- constraints: phone numbers and emails must be unique to individual. phone numbers shouldn't be null.

-- PGAdmin: Databases: Create: Database: 'School': Save

'''
CREATE TABLE students(
student_id serial PRIMARY KEY,
first_name VARCHAR(45) NOT NULL,
last_name VARCHAR(45) NOT NULL, 
homeroom_number integer,
phone VARCHAR(20) UNIQUE NOT NULL,
email VARCHAR(115) UNIQUE,
grad_year integer);
'''

'''
CREATE TABLE teachers(
teacher_id serial PRIMARY KEY,
first_name VARCHAR(45) NOT NULL,
last_name VARCHAR(45) NOT NULL, 
homeroom_number integer,
department VARCHAR(45),
email VARCHAR(20) UNIQUE,
phone VARCHAR(20) UNIQUE);
'''

-- 2) Insert student named Mark Watney (student_id=1) who has a phone number of 777-555-1234 and doesn't have an email. He graduates in 2035 and has 5 as a homeroom number.
-- INSERT INTO students(first_name, last_name, homeroom_number, phone, grad_year) VALUES ('Mark', 'Watney', 5, '7755551234', 2035);

-- 3) Insert teacher names Jonas Salk (teacher_id = 1) who as a homeroom number of 5 and is from the Biology department. His contact info is: jsalk@school.org and a phone number of 777-555-4321.
-- INSERT INTO teachers(first_name, last_name, homeroom_number, department, email, phone) VALUES ('Jonas', 'Salk', 5, 'Biology', 'jsalk@school.org', '7755554321');