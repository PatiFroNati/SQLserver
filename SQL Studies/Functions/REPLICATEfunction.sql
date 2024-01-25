/*
    Function: REPLICATE
    Syntax: RREPLICATE(string, n)
    Description: This function returns a string value that consists of a specified string repeated a specified number of times.
    Common Uses: 
    - Padding a string with a specific character or set of characters.
    - Generating test data with repeated patterns.
*/

USE TSQLV6;
GO

SELECT Replicate('Hello', 3) AS Result;

SELECT custid
    , RIGHT(REPLICATE('0', 5) + CONVERT(VARCHAR(10), custid), 5) as empid_formatted
FROM Sales.Customers


--visualize data
SELECT empid
    , REPLICATE('*', empid) as chart
FROM HR.Employees
ORDER BY chart DESC
