/*
The use of INDEXES is to retrieve data very fast from the database.
The users cannot see the indexes, they are just used to speed up searches/queries.
*/

CREATE INDEX ix_customername
ON customer (lastname, firstname);