/*
Function: SUBSTRING 
Syntax: SUBSTRING(string, start, length)

Description: Returns a substring from the input string, starting at the specified start position and with the specified length.

Common uses: 
-- 1. Extracting a portion of a string based on a specific starting position and length.
-- 2. Manipulating and transforming string data by extracting specific substrings.
-- 3. Parsing and extracting data from complex string formats.
*/
SELECT SUBSTRING('Hello, World!', 8, 5) AS SubstringExample;
-- Output: "World"

USE TSQLV6;
GO

SELECT lastname + firstname,
    SUBSTRING(lastname, 1, 4) as abbr_lname,
    SUBSTRING(firstname, 1, 3) as abbr_fname
FROM HR.Employees
