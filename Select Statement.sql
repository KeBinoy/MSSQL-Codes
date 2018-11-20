-- This SELECT statement is to get all records 
SELECT * FROM customer

-- These SQL statement selects firstname, middlename, lastname and birthdate columns from customer table. 
SELECT 
	firstname,
	middlename,
	lastname,
	firstname +' ' + SUBSTRING(middlename,1,1) + '. ' + lastname AS fullname,
	convert(varchar(15), birthdate, 107) AS birthdate
FROM customer
