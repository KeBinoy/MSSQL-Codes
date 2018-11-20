
/*=============================================Start==============================================================*/
/*
The following operators can be used in the WHERE clause:
Operator	|	Description
------------------------------------------------------------------
=			|	Equal
<>			|	Not equal. Note: In some versions of SQL this operator may be written as !=
>			|	Greater than
<			|	Less than
>=			|	Greater than or equal
<=			|	Less than or equal
BETWEEN		|	Between a certain range
LIKE		|	Search for a pattern
IN			|	Specify multiple possible values for a column
*/

--This is the format of Where Clause
--SELECT column_list FROM table-name WHERE condition;
/*
NOTE - SQL requires single quotes (') around text values (most database systems will also allow double quotes(")).
However, numeric fields should not be enclosed in quotes:
*/
/*=============================================End==============================================================*/

-- 1. Equal = 

	-- SQL requires single quotes (') around text values
	SELECT * FROM customer WHERE lastname = 'Rizal'

	-- Numeric fields should not be enclosed in quotes:
	SELECT * FROM customer WHERE customer_id = 1

-- 2. Not Equal <>

	SELECT * FROM customer WHERE gender <> 'Male'

-- 3. Greater than >
-- 4. Less than <
-- 5. Greater than or equal >=
-- 6. Less than or equal <=
-- 7. Between BETWEEN
-- 8. Search for a pattern LIKE
-- 9. Specify multiple possible values for a column IN  