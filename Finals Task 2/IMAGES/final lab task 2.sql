CREATE DATABASE schooldb;
DROP DATABASE schooldb;
USE schooldb;
SHOW DATABASES;

CREATE TABLE student_tbl (
username VARCHAR(50) PRIMARY KEY
);

DESCRIBE student_tbl;

CREATE TABLE assignment_tbl (
shortname VARCHAR(50) PRIMARY KEY, 
due_date DATE NOT NULL,
url VARCHAR(255)
);

DESCRIBE assignment_tbl;

CREATE TABLE submission_tbl (
username VARCHAR(50), 
shortname VARCHAR(50),
version INT(3), 
submit_date DATE NOT NULL,
the_data TEXT,
UNIQUE (username, shortname, version),
FOREIGN KEY(username) REFERENCES student_tbl(username),
FOREIGN KEY(shortname) REFERENCES assignment_tbl(shortname)
); 

DESCRIBE submission_tbl;



