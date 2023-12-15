-- template to build a temporary table

IF OBJECT_ID('tempdb..#temp_table') IS NOT NULL
BEGIN
    DROP TABLE  #temp_table;
END

-- Create the temp table
CREATE TABLE #temp_table
(
    column1 INT
    ,
    column2 VARCHAR(50)
    --add more as needed
)

-- Insert data into the temp table explicitly
INSERT INTO #temp_table
    (column1, column2)
VALUES
    (1, 'Data1'),
    (2, 'Data2');
-- Add more data as needed

-- Insert date into temp table with a query
INSERT INTO #temp_table
    (column1, column2)
SELECT
    SourceColumn1,
    SourceColumn2
FROM
    SourceTable;

-- Add an index on the first column (Column1)
CREATE INDEX IX_column1 ON #temp_table (column1);