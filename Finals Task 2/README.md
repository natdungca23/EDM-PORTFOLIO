# Finals Lab Task 2: Transform ER into Relational Tables
- In this task, it shows how to convert an ER (Entity-Relationship) diagram for student assignment submissions into MySQL relational tables. It includes creating tables for students, assignments, and submissions, setting up relationships using foreign keys, and making sure data stays connected using referential integrity.
  
## Step 1: Identify Entities and Relationships
- From the ER diagram, we identified:
1. Student – who submits assignments.
2. Assignment – which students work on.
3. Submission – the work submitted by students.

## Step 2: Create MySQL Tables
- We created 3 tables:
1. Student Table
   ### SCREENSHOT
![image alt](https://github.com/natdungca23/EDM-PORTFOLIO/blob/a6b6a38ec5171a245df0bce694bbd4bfa97e7d72/Finals%20Task%201/Image/Screenshot%202025-04-13%20185024.png)

2. Assignment Table
   ### SCREENSHOT
![image alt](https://github.com/natdungca23/EDM-PORTFOLIO/blob/a6b6a38ec5171a245df0bce694bbd4bfa97e7d72/Finals%20Task%201/Image/Screenshot%202025-04-13%20185024.png)

3. Submission Table
   ### SCREENSHOT
![image alt](https://github.com/natdungca23/EDM-PORTFOLIO/blob/a6b6a38ec5171a245df0bce694bbd4bfa97e7d72/Finals%20Task%201/Image/Screenshot%202025-04-13%20185024.png)

## Step 3: Add Keys and Relationships
* Set primary keys for each table.
* Added foreign keys in Submission to link it to Student and Assignment.

## Step 4: Draw the ER Diagram
- Use MySQL Workbench or phpMyAdmin to:
1. Create the tables.
2. Use "Reverse Engineer" (in Workbench) to generate the ER Diagram automatically.
3. Save or export the diagram as a .jpg or .pdf.

### ER DIAGRAM
![image alt](https://github.com/natdungca23/EDM-PORTFOLIO/blob/a6b6a38ec5171a245df0bce694bbd4bfa97e7d72/Finals%20Task%201/Image/Screenshot%202025-04-13%20185024.png)
