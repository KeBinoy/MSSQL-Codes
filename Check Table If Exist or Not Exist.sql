-- This statement is to select the Database
USE CRUD

-- This statement is to check if this table exist
--SELECT * FROM sysobjects WHERE xtype = 'U' AND name = 'TABLENAME'
IF  NOT EXISTS (SELECT * FROM sysobjects WHERE xtype = 'U' AND name = 'customer')
BEGIN
    --do your stuff here if it not exists....
	CREATE TABLE customer(
	   customer_id   INT        NOT NULL,
	   firstname VARCHAR (50)   NOT NULL,
	   middlename VARCHAR (50)  NOT NULL,
	   lastname VARCHAR (50)    NOT NULL,
	   gender VARCHAR (10)		NOT NULL,
	   birthdate  DATE			NOT NULL,
	   civil_status  VARCHAR(25),
	   home_address  VARCHAR (250) ,
	   contact_number  VARCHAR(25),
	   email  VARCHAR(255),
	   datetime_added  DATETIME DEFAULT GETDATE(),
	   PRIMARY KEY (customer_id)
	);
END 