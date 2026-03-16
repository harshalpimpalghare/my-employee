## Employee Data Analysis: SQL Scripts

This repository contains a collection of SQL queries designed to perform comprehensive data analysis on an employee database. The scripts cover essential operations ranging from basic data retrieval and filtering to advanced aggregations and conditional grouping.

---

### ## Key Features

The SQL scripts provided in `MY EMPLOYEES.sql` demonstrate the following analytical capabilities:

* **Data Retrieval & Formatting**: Techniques for selecting specific columns, using aliases for better readability, and fetching unique department lists.
* **Arithmetic Operations**: Calculating annual salaries and projecting 20% performance bonuses across the workforce.
* **Advanced Filtering**: Utilizing logical operators (`AND`, `OR`, `NOT`), range filtering (`BETWEEN`), and pattern matching (`LIKE`) to isolate specific employee segments.
* **Statistical Aggregations**: Calculating total headcounts, sum of salaries, average employee age, and identifying salary extremes (MIN/MAX).
* **Data Grouping & Metrics**: Analyzing metrics such as average salary and total employee count broken down by department and designation.
* **Refined Reporting**: Implementing the `HAVING` clause to filter grouped data (e.g., identifying departments with over 10 employees) and using `ROUND` for cleaner financial reporting.

---

### ## Database Schema Overview

The queries are structured to interact with an `employees` table within the `myemployees` database, featuring the following attributes:

| Column | Description |
| --- | --- |
| **Name** | Employee full name |
| **Age** | Employee age for demographic analysis |
| **Department** | Assigned business unit (e.g., 'IT', 'Non IT') |
| **Designation** | Professional role or job title |
| **Salary** | Monthly compensation figures |

---

### ## Sample Queries

#### Salary Analysis by Designation

```sql
SELECT designation, AVG(salary) AS avgsalary 
FROM employees
GROUP BY designation
HAVING AVG(salary) > 65000;

```

#### Demographic Breakdown

```sql
SELECT age, COUNT(*) AS total 
FROM employees
GROUP BY age
ORDER BY age;

```

---
