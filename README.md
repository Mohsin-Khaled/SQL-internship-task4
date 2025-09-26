# 📊 SQL Developer Internship - Task 4

This repository contains the solution for **Task 4: Aggregate Functions and Grouping** from the SQL Developer Internship program.

---

## 📝 Task Overview
- **Objective**: Use aggregate functions and grouping to summarize data.
- **Tools**: MySQL Workbench
- **Deliverables**: SQL queries using `SUM`, `COUNT`, `AVG`, `GROUP BY`, `HAVING`

---

## 📂 Files in this Repository
- **sql-task-4.sql** → SQL script containing table creation, sample data insertion, and aggregate queries.
- **Task Screenshot** → Reference task description and requirements.

---

## 🗂️ Database & Table
The database created is **Business**, with a table named **Sales** having the following structure:

```sql
CREATE DATABASE Business;
USE Business;

CREATE TABLE Sales(
  id INT,
  region TEXT,
  salesperson TEXT,
  amount INT
);
```

## 📥 Sample Data
The `Sales` table is populated with sample records:

```sql
INSERT INTO Sales(id, region, salesperson, amount)
VALUES 
(1, 'North', 'Jim', 1500),
(2, 'South', 'John', 1000),
(3, 'North', 'Max', NULL),
(4, 'East', 'Skylar', 1300),
(5, 'West', 'Angela', 2500),
(6, 'South', 'Farhan', 3000),
(7, 'East', 'Rose', 4000),
(2, 'South', 'John', 2000);
```

---

## 🔍 Implemented Queries With Screenshots

### 1. Total Sales by Region
```sql
SELECT region, SUM(amount) AS total_sales
FROM Sales
GROUP BY region;
```
<img src="https://github.com/user-attachments/assets/7bde3065-3036-4397-a16e-25f86647f72c" width="45%" />
<img src="https://github.com/user-attachments/assets/e9d4dfe3-9236-485c-9458-65ec0f495f74" width="45%" />

### 2. Count of Rows per Region
```sql
SELECT region, COUNT(*) AS total_rows
FROM Sales
GROUP BY region;
```
<img src="https://github.com/user-attachments/assets/155f41b3-94d9-4631-9f86-e830ce6aa8d3" width="45%" />
<img src="https://github.com/user-attachments/assets/a32f4878-d48e-4a11-9e87-358ef82411fa" width="45%" />

### 3. Count of Non-Null Sales Amounts
```sql
SELECT region, COUNT(amount) AS non_null_sales
FROM Sales
GROUP BY region;
```
<img src="https://github.com/user-attachments/assets/b2da80d4-b5bc-4562-8513-46654aabacc5" width="45%" />
<img src="https://github.com/user-attachments/assets/59cd0433-9c8e-4e2d-b730-195060bd159a" width="45%" />

### 4. Average Sales
```sql
SELECT AVG(amount) AS avgsales
FROM Sales;
```
<img src="https://github.com/user-attachments/assets/bb31c5e3-b0e2-464b-8fb3-85def8bdab6f" width="45%" />
<img src="https://github.com/user-attachments/assets/40df0c20-1f7c-4a3c-9575-1a3ce1dbf6e5" width="45%" />

### 5. Grouping by Region & Salesperson
```sql
SELECT region, salesperson, COUNT(id) AS num_sales, SUM(amount) AS total_sales
FROM Sales
GROUP BY region, salesperson;
```
<img src="https://github.com/user-attachments/assets/539d871e-ea77-41c3-b32c-92d3e3c70693" width="45%" />
<img src="https://github.com/user-attachments/assets/8c23649f-9836-46e8-b864-674a2a865c83" width="45%" />

### 6. Salesperson Sales Above 2000 (Using HAVING)
```sql
SELECT salesperson, SUM(amount) AS total_sales
FROM Sales
GROUP BY salesperson
HAVING SUM(amount) > 2000;
```
<img src="https://github.com/user-attachments/assets/68424661-930d-4d58-b2c0-3e1a63448058" width="45%" />
<img src="https://github.com/user-attachments/assets/700d95fe-e5cf-41d5-8c7a-a689e5cd9a3e" width="45%" />

### 7. Excluding South Region & Filtering
```sql
SELECT salesperson, SUM(amount) AS total_sales
FROM Sales
WHERE region != 'South'
GROUP BY salesperson
HAVING SUM(amount) > 2000;
```
<img src="https://github.com/user-attachments/assets/c473ae7d-367b-4901-b675-d62b69a857f9" width="45%" />
<img src="https://github.com/user-attachments/assets/82744ac8-bfe7-4c7a-bbf9-7dfac8a5a81a" width="45%" />

---

## 📌 Key Learning Points
- `GROUP BY` is used to categorize data.
- `COUNT(*)` counts all rows, whereas `COUNT(column)` counts only non-null values.
- `HAVING` filters aggregated data, while `WHERE` filters before aggregation.
- Aggregate functions used: `SUM()`, `AVG()`, `COUNT()`.

---

✅ **Completed Task 4: Aggregate Functions and Grouping**


