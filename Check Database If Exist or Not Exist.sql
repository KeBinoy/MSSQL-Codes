-- This statement is to check if this Database exist or not Exist
--SELECT name FROM master.dbo.sysdatabases WHERE ('[' + name + ']' = 'DATABASE_NAME' OR name = DATABASE_NAME)
IF  NOT EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE ('[' + name + ']' = 'CRUD' OR name = 'CRUD'))
BEGIN
    --do your stuff here if it not exists....
	CREATE DATABASE CRUD;
END 