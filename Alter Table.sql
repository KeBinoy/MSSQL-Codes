--It is impossible to alter multiple columns. You will need to do this one by one.
--Run the scipt one by one in order to alter the tables.

--1st Run
ALTER TABLE customer
ADD email VARCHAR(255);

--2nd run
/*
ALTER TABLE customer
ADD datetime_added DATETIME DEFAULT GETDATE();
--*/