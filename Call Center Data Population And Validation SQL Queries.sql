SELECT * from [DADABI PROJ]


/*(1)  Service Requests Over Time:
• What is the overall trend in Service Requests over the years 2018-2021?
• How have Service Requests changed on a monthly basis? */

SELECT
YEAR([Creation Date]) AS current_year,
COUNT([Case Id]) AS service_requests_count
FROM [DADABI PROJ]
WHERE YEAR([Creation Date]) BETWEEN 2018 and 2021
GROUP BY  YEAR([Creation Date])
ORDER BY current_year;


SELECT
    YEAR([Creation Date]) AS year,
    MONTH([Creation Date]) AS month,
    COUNT([Case Id]) AS service_requests_count
FROM [DADABI PROJ]
WHERE
    YEAR([Creation Date]) BETWEEN 2018 AND 2021
GROUP BY
    YEAR([Creation Date]), MONTH([Creation Date])
ORDER BY
    YEAR([Creation Date]), MONTH([Creation Date]);

/* (2) Volume of service requests received from different sources:

• What is the overall trend in Service Requests over Sources? */

SELECT SOURCE FROM [DADABI PROJ]
SELECT SOURCE, COUNT([CASE ID]) AS cid FROM [DADABI PROJ]
GROUP BY SOURCE
ORDER BY cid DESC

/*(3) Volume of service requests received by Department:
• What is the overall trend in Service Requests received by Departments? */


SELECT department,COUNT([Case Id]) AS case_id_count		FROM [DADABI PROJ]
GROUP BY department 
ORDER BY case_id_count DESC;


/*(4) Top 10 Performance Metrics (Response Time) per CATEGORY and Type of Request:
• What are the top 10 cases whose response time was fastest? Categorize it with Category1 and Type of Request.*/

SELECT  TOP 10 [Case ID],[TYPE] ,[DAYS TO CLOSE],CATEGORY1
FROM [DADABI PROJ]
WHERE [DAYS TO CLOSE] IS NOT NULL
ORDER BY [DAYS TO CLOSE] ASC

-- USE YourDatabaseName; -- Replace YourDatabaseName with the name of your database

