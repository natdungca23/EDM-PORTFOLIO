# Finals Lab Task 2: Transform ER into Relational Tables
- In this task, shows how to convert an ER (Entity-Relationship) diagram for student assignment submissions into MySQL relational tables. It includes creating tables for students, assignments, and submissions, setting up relationships using foreign keys, and making sure data stays connected using referential integrity.
  
## Step 1: Identify Entities and Relationships
- From the ER diagram, we identified:
1. Student – who submits assignments.
2. Assignment – which students work on.
3. Submission – the work submitted by students.
   ### SCREENSHOTS OF QUERY STATEMENTS
   
   ![image alt](https://github.com/natdungca23/EDM-PORTFOLIO/blob/45fbb39346ce5f0a570d27a7cbfe1ac495baf021/Finals%20Task%202/IMAGES/tbl%201%2C%202.png)
   
   ![image alt](https://github.com/natdungca23/EDM-PORTFOLIO/blob/45fbb39346ce5f0a570d27a7cbfe1ac495baf021/Finals%20Task%202/IMAGES/tbl%203.png)
   
## Step 2: Create MySQL Tables
- We created 3 tables:
1. Student Table
   ### SCREENSHOT
![image alt](https://github.com/natdungca23/EDM-PORTFOLIO/blob/39f84821214091af859b832a8896571562a75ba2/Finals%20Task%202/IMAGES/student.png)

2. Assignment Table
   ### SCREENSHOT
![image alt](https://github.com/natdungca23/EDM-PORTFOLIO/blob/39f84821214091af859b832a8896571562a75ba2/Finals%20Task%202/IMAGES/assign.png)

3. Submission Table
   ### SCREENSHOT
![image alt](https://github.com/natdungca23/EDM-PORTFOLIO/blob/39f84821214091af859b832a8896571562a75ba2/Finals%20Task%202/IMAGES/sub.png)

## Step 3: Add Keys and Relationships
* Set primary keys for each table.
* Added foreign keys in Submission to link it to Student and Assignment.

## Step 4: Draw the ER Diagram
- Use MySQL Workbench or phpMyAdmin to:
1. Create the tables.
2. Use "Reverse Engineer" (in Workbench) to generate the ER Diagram automatically.
3. Save or export the diagram as a .jpg or .pdf.

### ER DIAGRAM
![image alt](https://github.com/natdungca23/EDM-PORTFOLIO/blob/39f84821214091af859b832a8896571562a75ba2/Finals%20Task%202/IMAGES/erd.png)

## HERE IS THE COPY OF MY MYSQL.SCRIPT
![mysql_link](https://github.com/natdungca23/EDM-PORTFOLIO/blob/408ad2fc33f21995816f8b99a038bef8947a943f/Finals%20Task%202/IMAGES/final%20lab%20task%202.sql)
