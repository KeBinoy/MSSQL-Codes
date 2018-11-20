/* List of Date Format */
select convert(varchar, getdate(), 1)	-- 12/30/2006
select convert(varchar, getdate(), 2)	-- 06.12.30
select convert(varchar, getdate(), 3)	-- 30/12/06
select convert(varchar, getdate(), 4)	-- 30.12.06
select convert(varchar, getdate(), 5)	-- 30-12-06
select convert(varchar, getdate(), 6)	-- 30-Dec-06
select convert(varchar, getdate(), 7)	-- 30-Dec-06
select convert(varchar, getdate(), 10)	-- 12/30/2006
select convert(varchar, getdate(), 11)	-- 6/12/1930
select convert(varchar, getdate(), 12)	-- 61230
select convert(varchar, getdate(), 23)	-- 12/30/2006
select convert(varchar, getdate(), 101)	-- 12/30/2006
select convert(varchar, getdate(), 102)	-- 2006.12.30
select convert(varchar, getdate(), 103)	-- 30/12/2006
select convert(varchar, getdate(), 104)	-- 30.12.2006
select convert(varchar, getdate(), 105)	-- 30-12-2006
select convert(varchar, getdate(), 106)	-- 30-Dec-06
select convert(varchar, getdate(), 107)	-- 30-Dec-06
select convert(varchar, getdate(), 110)	-- 12/30/2006
select convert(varchar, getdate(), 111)	-- 12/30/2006
select convert(varchar, getdate(), 112)	-- 20061230

/* List of Time Format */
select convert(varchar, getdate(), 8)	-- 0:38:54
select convert(varchar, getdate(), 14)	-- 00:38:54:840
select convert(varchar, getdate(), 24)	-- 0:38:54
select convert(varchar, getdate(), 108)	-- 0:38:54
select convert(varchar, getdate(), 114)	-- 00:38:54:840

/* List of Date & Time Format */
select convert(varchar, getdate(), 0)	-- Dec 12 2006 12:38AM
select convert(varchar, getdate(), 9)	-- Dec 30 2006 12:38:54:840AM
select convert(varchar, getdate(), 13)	-- 30 Dec 2006 00:38:54:840AM
select convert(varchar, getdate(), 20)	-- 12/30/2006 0:38
select convert(varchar, getdate(), 21)	-- 38:54.8
select convert(varchar, getdate(), 22)	-- 12/30/2006 0:38
select convert(varchar, getdate(), 25)	-- 38:54.8
select convert(varchar, getdate(), 100)	-- Dec 30 2006 12:38AM
select convert(varchar, getdate(), 109)	-- Dec 30 2006 12:38:54:840AM
select convert(varchar, getdate(), 113)	-- 30 Dec 2006 00:38:54:840
select convert(varchar, getdate(), 120)	-- 12/30/2006 0:38
select convert(varchar, getdate(), 121)	-- 38:54.8
select convert(varchar, getdate(), 126)	-- 2006-12-30T00:38:54.840
select convert(varchar, getdate(), 127)	-- 2006-12-30T00:38:54.840
