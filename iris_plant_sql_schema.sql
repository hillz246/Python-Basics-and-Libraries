-- create database iris_db, create table iris , perform query


CREATE TABLE IF NOT EXISTS iris (
          sepal_length DECIMAL(10, 2),
          sepal_width DECIMAL(10, 2),
          petal_length DECIMAL(10, 2),
          petal_width DECIMAL(10, 2),
          class VARCHAR(15)
      );

-- Module 4: Working with Databases (SQL)
-- Task 4: Write SQL queries to extract, manipulate, and analyze data from a database.
-- ● SQL script with the following queries:
--○ Retrieve the first 10 rows.
--○ Find the average 'petal_width' by species.
--○ Find the correlation between 'sepal_length' and 'petal_length'.


--Select all data.
SELECT * FROM iris;

--Select specific columns.
SELECT sepal_length, sepal_width FROM iris;

-- Retrieve the first 10 rows.
 
SELECT * FROM iris
LIMIT 10;


-- Find the average 'petal_width' by species.
SELECT class, AVG(petal_width) AS average_petal_width
FROM iris
GROUP BY class;

--or decimal 2 digits
SELECT class, ROUND(AVG(petal_width),2) AS average_petal_width
FROM iris
GROUP BY class;

--○ Find the correlation between 'sepal_length' and 'petal_length'.
-- CORR(sepal_length, petal_length): This function calculates the Pearson correlation coefficient between the two columns.
--The result will be a value between -1 and 1: 1 means a perfect positive correlation. -1 means a perfect negative correlation. 0 means no correlation.


SELECT CORR(sepal_length, petal_length) AS correlation
FROM IRIS;

-- Answer: correlation - double precision: 0.8713

