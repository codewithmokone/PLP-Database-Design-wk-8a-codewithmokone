# Student Records Database

https://github.com/codewithmokone/PLP-Database-Design-wk-8a-codewithmokone/blob/main/README.md
## Project Title
**Student Records Management System**

## Description
This project provides a basic SQL-based schema for managing a simple student records system. It includes the creation of database with tables for departments, students, and courses, as well as the insertion of sample data.

### The main features include:
- Storing department name and ID's.
- Maintaining student profiles linked to departments.
- Managing courses with credit information and department asspciation.


It is ideal for learning relational database design, foreign key usage, and basic manipulation.

### How to Run / Setup the Project

#### Requirements:
- MySQL Server or any compatible SQL environment.
- SQL Client (e.g., MySQL Workbench).

#### Steps to Setup

1. **Open your SQL Client.**
2. **Connect to your database server.**
3. **Run the SQL script file** (containing the database and tables creation commands):
   - If using MySQL Workbench: Open the script file and click the **"Execute"** button.
   - If using the terminal:  
     ```bash
     mysql -u your_username -p < path/to/your_script.sql
     ```
4. **Verify**:
   - The database `StudentRecords` should be created.
   - Tables `Departments`, `Students`, and `Courses` should be present with sample data inserted.

---

Feel free to clone or fork this repository for learning or building more complex student record systems.
