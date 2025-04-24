CREATE DATABASE companydb;
DROP DATABASE companydb;
USE companydb;
SHOW DATABASES;
-- TASK 1
CREATE TABLE employee_tbl (
employee_id INT(3) PRIMARY KEY AUTO_INCREMENT, 
employee_name VARCHAR(255) NOT NULL,
manager_id INT(3), FOREIGN KEY(manager_id) REFERENCES employee_tbl(employee_id)
); 

DESCRIBE employee_tbl;
-- TASK 2
CREATE TABLE department_tbl (
department_id INT(3) PRIMARY KEY AUTO_INCREMENT,
department_name VARCHAR(255) NOT NULL
); 

DESCRIBE department_tbl; 
-- TASK 3
CREATE TABLE employee_department_tbl (
employee_id INT(3), FOREIGN KEY(employee_id) REFERENCES employee_tbl(employee_id),
department_id INT(3), FOREIGN KEY(department_id) REFERENCES department_tbl(department_id)
);

DESCRIBE employee_department_tbl;
-- TASK 4
CREATE TABLE employee_projects_tbl (
employee_id INT(3), FOREIGN KEY(employee_id) REFERENCES employee_tbl(employee_id),
project_name VARCHAR(255) NOT NULL
);

DESCRIBE employee_projects_tbl;
-- TASK 5
CREATE TABLE manager_tbl (
manager_id INT(3) PRIMARY KEY AUTO_INCREMENT,
employee_id INT(3), FOREIGN KEY(employee_id) REFERENCES employee_tbl(employee_id)
);

DESCRIBE manager_tbl;


