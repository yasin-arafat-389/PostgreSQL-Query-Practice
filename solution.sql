-- Create a database
CREATE DATABASE university_db;

-- Creating a student table
CREATE TABLE students (
  student_id SERIAL PRIMARY KEY,
  student_name VARCHAR(100) NOT NULL,
  age INTEGER,
  email VARCHAR(100) UNIQUE NOT NULL,
  frontend_mark INTEGER,
  backend_mark INTEGER,
  status VARCHAR(50)
);


-- Creating courses table
CREATE TABLE courses (
  course_id SERIAL PRIMARY KEY,
  course_name VARCHAR(100) NOT NULL,
  credits INTEGER NOT NULL
);


-- Creating enrollment table
CREATE TABLE enrollment (
  enrollment_id SERIAL PRIMARY KEY,
  student_id INTEGER REFERENCES students(student_id) ON DELETE CASCADE,
  course_id INTEGER REFERENCES courses(course_id) ON DELETE CASCADE
);


-- Inserting data to student table
INSERT INTO students (student_name, age, email, frontend_mark, backend_mark, status) 
VALUES 
('Sameer', 21, 'sameer@example.com', 48, 60, NULL),
('Zoya', 23, 'zoya@example.com', 52, 58, NULL),
('Nabil', 22, 'nabil@example.com', 37, 46, NULL),
('Rafi', 24, 'rafi@example.com', 41, 40, NULL),
('Sophia', 22, 'sophia@example.com', 50, 52, NULL),
('Hasan', 23, 'hasan@gmail.com', 43, 39, NULL);


-- Inserting data to course table
INSERT INTO courses (course_name, credits) 
VALUES 
('Next.js', 3),
('React.js', 4),
('Databases', 3),
('Prisma', 3);


-- Inserting data to enrollment table
INSERT INTO enrollment (student_id, course_id) 
VALUES 
(1, 1),
(1, 2),
(2, 1),
(3, 2);


-- Insert a new student record
INSERT INTO students (student_name, age, email, frontend_mark, backend_mark, status) 
VALUES 
('Yasin', 27, 'yasin@gmail.com', 42, 52, NULL);




