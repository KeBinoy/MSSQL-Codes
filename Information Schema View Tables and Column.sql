/*=======================================
SQL Server INFORMATION_SCHEMA Views | See if a Table Exists
Source: chartio.com/learn/databases/using-information-schema-views-to-check-to-see-if-table-exists-in-sql-server/
=========================================*/

------------------------------------------------------------------------------------------------------------

/* 1. This first query will return all of the tables in the database you are querying.*/
SELECT
  	TABLE_NAME
FROM
  	INFORMATION_SCHEMA.TABLES

------------------------------------------------------------------------------------------------------------

/* 2. The second query will return a list of all the columns and tables in the database you are querying. */
SELECT
  	TABLE_NAME,
COLUMN_NAME
FROM
  	INFORMATION_SCHEMA.COLUMNS

------------------------------------------------------------------------------------------------------------

/* 3. Or, you can also query for just the COLUMNS from a specific table and return the column names from the specific table ‘tableName’ in our database. */

SELECT
	COLUMN_NAME
FROM
  	INFORMATION_SCHEMA.COLUMNS
WHERE
	TABLE_NAME = 'tableName'
	
------------------------------------------------------------------------------------------------------------

/* 4. Or, you can also query for just the TABLE from a specific column and return the table and column names in our database. */

SELECT
  	TABLE_NAME,
	COLUMN_NAME
FROM
  	INFORMATION_SCHEMA.COLUMNS
WHERE
	COLUMN_NAME = 'columnName'

------------------------------------------------------------------------------------------------------------

/* 5. With this next query you can find out whether or not there is a TABLE in the data source that matches some kind of search parameters. */

IF EXISTS(
	SELECT
  		*
	FROM
  		INFORMATION_SCHEMA.TABLES
	WHERE
  		TABLE_NAME = 'tableName'
		)
SELECT 'FOUND' AS search_result ELSE SELECT 'NOT FOUND' AS search_result;

------------------------------------------------------------------------------------------------------------