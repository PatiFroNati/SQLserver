--- find the median in SQL Server usine ROW_NUMBER() window function

WITH median
AS (
	SELECT id
		,company
		,salary
		,ROW_NUMBER() OVER (
			PARTITION BY company ORDER BY salary
				,id
			) AS 'row1'
		,ROW_NUMBER() OVER (
			PARTITION BY company ORDER BY salary DESC
				,id DESC
			) AS 'row2'
	FROM Employee
	)
SELECT id
	,company
	,salary
FROM median
WHERE ABS(row1 - row2) <= 1
ORDER BY company
	,salary
	,id 
