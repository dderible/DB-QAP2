--Author: Declan Derible

--TABLES
CREATE TABLE students (
	id INT AUTO_INCREMENT PRIMARY KEY,
	first_name TEXT,
	last_name TEXT,
	email TEXT,
	school_enrollment_date DATE
);

CREATE TABLE professors (
	id INT AUTO_INCREMENT PRIMARY KEY,
	first_name TEXT,
	last_name TEXT,
	department TEXT
);

CREATE TABLE courses (
	id INT AUTO_INCREMENT PRIMARY KEY,
	course_name TEXT,
	course_description TEXT,
	FOREIGN KEY (professor_id) REFERENCES professors(id)
);

CREATE TABLE enrollments (
	student_id INT,
    course_id INT,
    enrollment_date DATE,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students(id),
    FOREIGN KEY (course_id) REFERENCES courses(id)
);