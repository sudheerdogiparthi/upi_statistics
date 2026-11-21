create database upi_statistics;
use upi_statistics;

-- Display first 10 records
SELECT *
FROM upi_statistics
LIMIT 10;

-- Total number of records
select count(*) as Total_Records
from upi_statistics;

-- Check column information
describe upi_statistics;

-- Check date range
select min(Month_Date) as First_Month,max(Month_Date) as Last_Month
from upi_statistics;

-- Total UPI transaction volume
select sum('Volume (In Mn.)') as Total_Transaction_Volume
from upi_statistics;

-- Total UPI transaction value
select sum('Value (In Cr.)') as Total_Transaction_Value
from upi_statistics;

ALTER TABLE upi_statistics
ADD COLUMN Year INT;

SET SQL_SAFE_UPDATES = 0;
UPDATE upi_statistics
SET Year = YEAR(
    STR_TO_DATE(Month_Date, '%d-%m-%Y')
);
SET SQL_SAFE_UPDATES = 1;

SELECT
    Year,
    Month_Date
FROM upi_statistics
LIMIT 15;

-- Year-wise transaction analysis
SELECT
    Year,
    SUM(`Volume (In Mn.)`) AS Total_Volume,
    SUM(`Value (In Cr.)`) AS Total_Value
FROM upi_statistics
GROUP BY Year
ORDER BY Year;

-- Year-wise bank participation
select
	Year,
	avg(`No. of Banks live on UPI`) as Average_Banks,
    max(`No. of Banks live on UPI`) as Maximum_Banks
from upi_statistics
group by Year
order by Year;

-- Top 10 months by transaction volume
SELECT
    Month_Name,
    Year,
    `Volume (In Mn.)` AS Transaction_Volume
FROM upi_statistics
ORDER BY `Volume (In Mn.)` DESC
LIMIT 10;

-- Top 10 months by transaction value
SELECT
    Month_Name,
    Year,
    `Value (In Cr.)` AS Transaction_Value
FROM upi_statistics
ORDER BY `Value (In Cr.)` DESC
LIMIT 10;

-- Average monthly transaction volume
SELECT
    AVG(`Volume (In Mn.)`) AS Average_Monthly_Volume
FROM upi_statistics;

-- Month-wise transaction analysis
SELECT
    Month_Number,
    Month_Name,
    AVG(`Volume (In Mn.)`) AS Average_Volume,
    AVG(`Value (In Cr.)`) AS Average_Value
FROM upi_statistics
GROUP BY Month_Number, Month_Name
ORDER BY Month_Number;

-- Month-on-Month transaction growth
WITH monthly_growth AS (
    SELECT
        Month_Date,
        `Volume (In Mn.)` AS Current_Volume,

        LAG(`Volume (In Mn.)`) OVER (
            ORDER BY Month_Date
        ) AS Previous_Volume

    FROM upi_statistics
)

SELECT
    Month_Date,
    Current_Volume,
    Previous_Volume,
    
    ROUND(
        ((Current_Volume - Previous_Volume)
        / NULLIF(Previous_Volume, 0)) * 100,
        2
    ) AS MoM_Growth_Percentage

FROM monthly_growth
ORDER BY Month_Date;

-- Year-on-Year transaction growth
WITH yearly_data AS (
    SELECT
        Year,
        SUM(`Volume (In Mn.)`) AS Total_Volume
    FROM upi_statistics
    GROUP BY Year
),

yearly_growth AS (
    SELECT
        Year,
        Total_Volume,

        LAG(Total_Volume) OVER (
            ORDER BY Year
        ) AS Previous_Year_Volume

    FROM yearly_data
)

SELECT
    Year,
    Total_Volume,
    Previous_Year_Volume,

    ROUND(
        ((Total_Volume - Previous_Year_Volume)
        / NULLIF(Previous_Year_Volume, 0)) * 100,
        2
    ) AS YoY_Growth_Percentage

FROM yearly_growth
ORDER BY Year;