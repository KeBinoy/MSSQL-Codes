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
   PRIMARY KEY (customer_id)
);