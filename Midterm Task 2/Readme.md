 #  Midterm Lab Task - 2 Data Cleaning and Transformation Using Power Query 
 > In this task we are given a raw data from csv to perform data cleaning and transformation using power query 
Sure! Let's simplify the process of cleaning and transforming data using Power Query.

### 1. Load Your Data
- Open Excel or Power BI.
- Go to the Data tab and click Get Data > From CSV.
- Select your CSV file to import it into Power Query.

### 2. Remove Unneeded Columns
- Click the column you don't need.
- Right-click and choose Remove to get rid of it.

### 3. Fix Duplicate Rows
- Go to the Home tab.
- Click Remove Duplicates to get rid of any repeated rows.

### 4. Filter Out Unwanted Data
- Click the drop-down arrow on the column header.
- Use filters to remove rows you don’t need (e.g., empty rows or specific values).

### 5. Change Data Types
- Sometimes, data is in the wrong format (e.g., numbers as text).
- Click the column, go to the Transform tab, and choose the right data type (like Number or Currency).

### 6. Handle Missing Data
- If there are missing values, you can replace them (e.g., replace empty values with 0) by using Replace Values in the Transform tab.

### 7. Split or Combine Columns
- If a column has combined information (e.g., full name or address), you can split it into separate columns.
- Select the column, click Split Column and choose how to split (e.g., by space, comma, etc.).
- You can also combine columns into one by using Merge Columns.

### 8. Remove Extra Spaces
- To remove spaces before or after the data, select the column and click Trim under the Transform tab.

### 9. Sort Your Data
- To organize your data, click the drop-down on a column and choose Sort Ascending or Sort Descending.

### 10. Create New Columns 
- If you need a new column (like a total price from quantity and unit price), click Add Column > Custom Column and write a simple formula.

### 11. Finish and Load the Cleaned Data
- Once you’re happy with the changes, click Close & Load to load the cleaned data back into Excel or Power BI.
## Dataset Before Cleaning and Transformation (Screenshot)
* Uncleaned DS Jobs
![image alt](https://github.com/natdungca23/EDM-PORTFOLIO/blob/237655450752c7534149ef544a6530572b9a4e83/Midterm%20Task%202/Images/Nat.6%20unclean.png)
# Dataset After Cleaning and Transformation 
![image alt](https://github.com/natdungca23/EDM-PORTFOLIO/blob/9628d22f1a7146d0ec21bce8681533efc3c0aa69/Midterm%20Task%202/Images/Nat%207%20-%202nd.png)
# Here are the Screenshots of every queries 
* Sal by Role Type Dup
![image alt](https://github.com/natdungca23/EDM-PORTFOLIO/blob/79906f293372aa993657550f93d94538ff92f110/Midterm%20Task%202/Images/nat%202.png)
* Sal by Size Ref
![image alt](https://github.com/natdungca23/EDM-PORTFOLIO/blob/df01314eb1af1c4d57b586f96c69c6edcb406e36/Midterm%20Task%202/Images/NAt%203.png)
* Sal by Size Role Type Dup
![image alt](https://github.com/natdungca23/EDM-PORTFOLIO/blob/79906f293372aa993657550f93d94538ff92f110/Midterm%20Task%202/Images/nat%202.png)
* States
![image alt](https://github.com/natdungca23/EDM-PORTFOLIO/blob/79906f293372aa993657550f93d94538ff92f110/Midterm%20Task%202/Images/nat%202.png)
* Sal by State Ref
![image alt](https://github.com/natdungca23/EDM-PORTFOLIO/blob/79906f293372aa993657550f93d94538ff92f110/Midterm%20Task%202/Images/nat%202.png)


