CREATE DATABASE sales_project;

USE sales_project;

SELECT * FROM sales_data_sample LIMIT 10;

SELECT SUM(SALES) AS total_sales
FROM sales_data_sample;

SELECT PRODUCTLINE, SUM(SALES) AS total_sales
FROM sales_data_sample
GROUP BY PRODUCTLINE
ORDER BY total_sales DESC;

SELECT 
    YEAR(STR_TO_DATE(ORDERDATE, '%m/%d/%Y')) AS year,
    MONTH(STR_TO_DATE(ORDERDATE, '%m/%d/%Y')) AS month,
    SUM(SALES) AS total_sales
FROM sales_data_sample
GROUP BY year, month
ORDER BY year, month;