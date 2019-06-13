USE [CRUD]
GO
/*

The SQL UPDATE Statement
The UPDATE statement is used to modify the existing records in a table.

==== >> Sample Table "Student"

student_id	| firstname		| middlename	| lastname		| gender	| bdate
5			| Kevin John	| Ayudante		| Rivera		| Male		| 4/20/1992
6			| Jan			| S				| Mante			| Male		| 3/21/1987
7			| Anton 		| B				| Alonsabe		| Male		| 4/21/1973
8			| Karen			| B				| Ybanez		| Female	| 6/20/1972

*/
UPDATE [dbo].[student]
   SET [firstname] = 'John Larry'
      ,[middlename] = 'A'
      ,[lastname] = 'Limbo'
      ,[gender] = 'Male'
      ,[bdate] = '12/25/1990'
 WHERE student_id = 6
GO


