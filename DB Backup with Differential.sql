/*
A differential back up reduces the back up time (since only the changes are backed up).
*/
BACKUP DATABASE CRUD
TO DISK = 'D:\BackUpDB\CRUD.bak'
WITH DIFFERENTIAL;