USE [CRUD]
GO
/*

The SQL UPDATE Statement
The UPDATE statement is used to modify the existing records in a table.

==== >> Sample Table "Student"

student_id	| firstname		| middlename	| lastname		| gender	| bdate
5			| Kevin			| A				| Rivera		| Male		| 01/01/1995
6			| Jan			| S				| Mante			| Male		| 3/21/1980
7			| Anton 		| B				| Alonsabe		| Male		| 9/21/1920
8			| Karen			| B				| Ybanez		| Female	| 7/20/1980

*/
UPDATE [dbo].[student]
   SET [firstname] = 'John Larry'
      ,[middlename] = 'A'
      ,[lastname] = 'Limbo'
      ,[gender] = 'Male'
      ,[bdate] = '12/25/1990'
 WHERE student_id = 6
GO


