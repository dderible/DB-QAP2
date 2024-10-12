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

--INSERTED INFORMATION
INSERT INTO students (first_name, last_name, email, school_enrollment_date) VALUES
	('Declan', 'Derible', 'declan.derible@keyin.com', '2024-03-16'),
	('Evan', 'Morris', 'evan.morris@keyin.com', '2024-01-28'),
	('Aaron', 'Saunders', 'aaron.saunders@keyin.com', '2023-12-12'),
	('Logan', 'Janes', 'logan.janes@keyin.com', '2024-05-20'),
	('Gavin', 'Janes', 'gavin.janes@keyin.com', '2024-05-20');

INSERT INFO professors (first_name, last_name, department) VALUES
	('Sam', 'Martino', 'Website Development'),
	('Sebastian', 'More', 'AWS Development'),
	('Jackie', 'Chamorro', 'Java Development'),
	('Katia', 'Stone', 'UI/UX Development');

INSERT INFO courses (course_name, course_description, professor_id) VALUES
	('Website Development', 'Introduction to Web Dev', 1),
	('AWS Development', 'Introduction to Amazon Web Services', 2),
	('UI/UX Development', 'Introduction to UI/UX Design', 3);

INSERT INFO enrollments (student_id, course_id, enrollment_date) VALUES
	(1, 1, '2024-03-16'),
	(2, 1, '2024-01-28'),
	(3, 3, '2023-12-12'),
	(4, 2, '2024-05-20'),
	(5, 2, '2024-05-20');