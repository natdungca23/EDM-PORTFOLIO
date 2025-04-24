# Finals Lab Task 1: MULTI LEVEL COMPANY DATABASE 
- In this task, we are creating a multi-level company database to manage and store information about companies, departments, employees, and their hierarchical relationships. To achieve this, we will use XAMPP as our local development environment to run a MySQL database, and MySQL Workbench to design, create, and manage the database schema. 
## **Step 1: Create a Table Named "employees"**
1. Open **MySQL Workbench** or **phpMyAdmin**.
2. Connect to your MySQL server.
3. Run the following SQL query to create the `employees` table
   ![image alt](https://github.com/natdungca23/EDM-PORTFOLIO/blob/a6b6a38ec5171a245df0bce694bbd4bfa97e7d72/Finals%20Task%201/Image/Screenshot%202025-04-13%20185024.png)
   ![image alt](https://github.com/natdungca23/EDM-PORTFOLIO/blob/e25cdd41fdc6d16e1d919829db48068a80507317/Finals%20Task%201/Image/task%201%20table.png)
## **Step 2: Create a Table Named "departments"**
In **MySQL Workbench** or **phpMyAdmin**, run the following SQL query to create the `departments` table
   ![image alt](https://github.com/natdungca23/EDM-PORTFOLIO/blob/a6b6a38ec5171a245df0bce694bbd4bfa97e7d72/Finals%20Task%201/Image/Screenshot%202025-04-13%20185115.png)
   ![image alt](https://github.com/natdungca23/EDM-PORTFOLIO/blob/e25cdd41fdc6d16e1d919829db48068a80507317/Finals%20Task%201/Image/task%202%20table.png)
## **Step 3: Create a Table Named "employee_departments"**
In **MySQL Workbench** or **phpMyAdmin**, run the following SQL query to create the `employee_departments` table
   ![image alt](https://github.com/natdungca23/EDM-PORTFOLIO/blob/a6b6a38ec5171a245df0bce694bbd4bfa97e7d72/Finals%20Task%201/Image/Screenshot%202025-04-13%20185133.png)
   ![image alt](https://github.com/natdungca23/EDM-PORTFOLIO/blob/e25cdd41fdc6d16e1d919829db48068a80507317/Finals%20Task%201/Image/task%203%20table.png)
## **Step 4: Create a Table Named "employee_projects"**
In **MySQL Workbench** or **phpMyAdmin**, run the following SQL query to create the `employee_projects` table
   ![image alt](https://github.com/natdungca23/EDM-PORTFOLIO/blob/a6b6a38ec5171a245df0bce694bbd4bfa97e7d72/Finals%20Task%201/Image/Screenshot%202025-04-13%20185148.png)
   ![image alt](https://github.com/natdungca23/EDM-PORTFOLIO/blob/e25cdd41fdc6d16e1d919829db48068a80507317/Finals%20Task%201/Image/task%204%20table.png)
## **Step 5: Create a Table Named "managers"**
In **MySQL Workbench** or **phpMyAdmin**, run the following SQL query to create the `managers` table
   ![image alt](https://github.com/natdungca23/EDM-PORTFOLIO/blob/a6b6a38ec5171a245df0bce694bbd4bfa97e7d72/Finals%20Task%201/Image/Screenshot%202025-04-13%20185158.png)
   ![image alt](https://github.com/natdungca23/EDM-PORTFOLIO/blob/e25cdd41fdc6d16e1d919829db48068a80507317/Finals%20Task%201/Image/task%205%20table.png)
## **Step 6: Generate the ERD (Entity-Relationship Diagram)**
1. Open **MySQL Workbench**.
2. Go to **File** → **New Model** to create a new model.
3. Click **Add Diagram** in the Model tab to create a new ER diagram.
4. Drag the tables (`employees`, `departments`, `employee_departments`, `employee_projects`, `managers`) into the diagram.
5. Arrange the tables to make the diagram clear and readable.
6. Save and export the ERD as **PNG** or **PDF**:
   - Go to **File** → **Export** → **Export as PNG** (or PDF).
   ![image alt](https://github.com/natdungca23/EDM-PORTFOLIO/blob/a6b6a38ec5171a245df0bce694bbd4bfa97e7d72/Finals%20Task%201/Image/Screenshot%202025-04-13%20185933.png)
## **Step 7: Save and Export SQL Code**
1. In **MySQL Workbench** or **phpMyAdmin**, copy all the SQL code used to create the tables.
2. Save the SQL code into a `.sql` file and keep it ready for submission.
## **Step 8: Submit Required Files**
1. **SQL Queries (Task 1-5)**: Submit the SQL queries used to create the tables.
2. **Table Structures**: Run `DESCRIBE <table_name>;` in MySQL Workbench or phpMyAdmin to get the structure of each table and include the results.
3. **ER Diagram**: Submit the ER diagram as an image (PNG, JPG, or PDF).
4. **SQL Copy**: Submit the `.sql` file containing the SQL code.

## HERE IS THE COPY OF MY MYSQL.SCRIPT
![mysql_link](https://github.com/natdungca23/EDM-PORTFOLIO/blob/daf09669017538134b2ad4f7eb3d62050aaeb360/Finals%20Task%201/Image/FINALS%20TASK%201%20-%20DUNGCA%20NATASHA.sql)

