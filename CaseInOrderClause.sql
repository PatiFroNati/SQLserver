
--SQL Exercise

--Database: Northwind 
--List of all customers, sorted by region, alphabetically with customers with no region (null in the Region field) to be at the end.
--Case Statement in the ORDER BY clause to sort NULL values last
====================================================================================================================================

SELECT CustomerID
	,CompanyName
	,Region
FROM Customers
ORDER BY CASE 
		WHEN Region IS NULL
			THEN 1
		ELSE 0
		END
	,Region
	,CustomerID

