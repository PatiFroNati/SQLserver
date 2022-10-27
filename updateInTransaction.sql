USE Northwind;
GO

SELECT orderID
	, OrderDate
	, DATEADD(d, 7, OrderDate)
FROM Orders
WHERE OrderDate < '1996-08-01'
ORDER BY OrderDate
OFFSET 0 ROWS
FETCH FIRST 25 ROWS ONLY;
GO

BEGIN TRAN
	UPDATE Orders
	SET OrderDate = DATEADD(d, 7, OrderDate)
	WHERE OrderDate < '1996-08-01';

	SELECT OrderID
		, OrderDate
	FROM Orders
	ORDER BY OrderDate
	OFFSET 0 ROWS 
	FETCH FIRST 50 ROWS ONLY;

ROLLBACK
-- COMMIT
