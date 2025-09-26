 DROP DATABASE IF EXISTS Business;
 CREATE DATABASE Business;
 USE Business;
 
 CREATE TABLE Sales(
  id INT,
  region TEXT,
  salesperson TEXT,
  amount INT
);

INSERT INTO Sales(id, region, salesperson, amount)
VALUES 
(1, 'North', 'Jim', 1500),
(2, 'south', 'John', 1000),
(3, 'North', 'Max', NULL),
(4, 'East', 'skylar', 1300),
(5, 'West', 'Angela', 2500),
(6, 'South', 'Farhan', 3000),
(7, 'East', 'Rose', 4000),
(2, 'south', 'John', 2000);
 
SELECT region, SUM(amount) AS total_sales
FROM Sales
GROUP BY region; -- Used to group rows that have the same values in specified columns

SELECT region, count(*) AS total_rows -- count(*) used to count all rows per region
FROM Sales
GROUP BY region; 

SELECT region, count(amount) AS non_null_sales --  count(amount)-Counts only non-null amounts per region
FROM Sales
GROUP BY region; 

SELECT AVG(amount) AS avgsales  -- AVG(): calculates the average value of all selected numeric columns
FROM Sales;

SELECT region, salesperson, COUNT(id) AS num_sales, SUM(amount) AS total_sales
FROM Sales
GROUP BY region, salesperson;

SELECT salesperson, SUM(amount) AS total_sales
FROM Sales
GROUP BY salesperson
HAVING SUM(amount) > 2000; -- Filter groups after Aggregation

SELECT salesperson, SUM(amount) AS total_sales
FROM Sales
WHERE region != 'south'
GROUP BY salesperson
HAVING SUM(amount) > 2000; -- Filter groups after Aggregation
 