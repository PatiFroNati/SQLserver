/*  
REPLACE function

REPLACE(string, substring1, substring2)

Description: Replaces all occurrences of a substring (substring1) with another (substring2)

Uses:  Reformat strings, count occurrences of a character

*/

USE TSQLV6;
GO

-- Reformat strings
SELECT contactname
    , REPLACE(contactname, ', ', '_') as formatted_name
FROM Sales.Customers;


--Find names with a specific letter in them by replacing that letter with empty character, then substracting the length of the original name with the string with the empty characters, anything greater than 0 will have that letter in it.  
SELECT contactname
FROM Sales.Customers
WHERE (LEN(contactname) - LEN(REPLACE(contactname, 'z', ''))) > 0;

SELECT contactname
 , LEN(contactname) - LEN(REPLACE(contactname, 't', '')) as num_q_in_name
FROM Sales.Customers
ORDER BY num_q_in_name DESC, contactname;