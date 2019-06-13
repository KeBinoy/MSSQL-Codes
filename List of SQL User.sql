--select suser_sname(owner_sid) as 'Owner', state_desc, *
--from sys.databases
--List of SQL User
select * from master.sys.server_principals