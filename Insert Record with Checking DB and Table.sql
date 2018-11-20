-- FIRST Run this script if you dont have database.
-- This script is to create database

/*=============================================Start==============================================================*/

-- This statement is to check if this Database exist or not Exist
--SELECT name FROM master.dbo.sysdatabases WHERE ('[' + name + ']' = 'DATABASE_NAME' OR name = DATABASE_NAME)

		IF  NOT EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE ('[' + name + ']' = 'CRUD' OR name = 'CRUD'))
		BEGIN
			--do your stuff here if it not exists....
			CREATE DATABASE CRUD;
		END 

/*=============================================End==============================================================*/



-- SECOND Run this script if you already have database.
-- This script is to create table

/*=============================================Start==============================================================*/
-- This statement is to select Database CRUDs
--USE CRUDs

-- This statement is to check if this table exist or not exist
--SELECT * FROM sysobjects WHERE xtype = 'U' AND name = 'TABLENAME'

		IF  NOT EXISTS (SELECT * FROM sysobjects WHERE xtype = 'U' AND name = 'customer')
		BEGIN
			--do your stuff here if it not exists....
			CREATE TABLE customer(
			   customer_id   INT        IDENTITY(1,1),
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
/*=============================================End==============================================================*/

-- INSERT One Record
INSERT INTO customer (firstname, middlename, lastname, gender, birthdate, civil_status, home_address, contact_number, email)
VALUES ('Jose', 'Protasio', 'Rizal', 'Male', '06/19/1861', 'Single', 'Calamba, Laguna', '0911000000','jose.rizal@philhero.com')


-- INSERT Multiple Record
INSERT INTO customer (firstname, middlename, lastname, gender, birthdate, civil_status, home_address, contact_number, email)
VALUES ('María Josefa Gabriela', 'Cariño', 'Silang', 'Female', '03/19/1731', 'Married', 'Santa, Ilocos Sur', '0912000000','gabriela.silang@philhero.com'),
	('Marcelo', 'Hilario', 'Del Pilar', 'Male', '08/30/1850', 'Married', 'Bulacan', '0913000000','marcelo.delpilar@philhero.com'),
	('Melchora ', 'Aquino', 'Ramos', 'Female', '01/06/1812', 'Married', 'Balintawak, Quezon City', '0914000000','melchora.aquino@philhero.com')