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


