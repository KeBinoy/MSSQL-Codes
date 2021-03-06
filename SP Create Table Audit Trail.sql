Declare
	@Table As varchar(30)

Set @Table = 'customer'


BEGIN

Declare @sql As varchar(8000)

--- Create Audit Trail Table ---

Declare @colname As sysname, @typename As sysname, @length As smallint, @xprec As tinyint, @xscale As tinyint, @isnullable As int
Declare @coldefinition As varchar(6000)

Declare column_cursor Cursor For
Select c.name [colname], t.name [typename], c.length, c.xprec, c.xscale, c.isnullable
From syscolumns c Inner Join systypes t On c.xtype = t.xtype
Where c.id = (Select id From sysobjects Where xtype = 'U' /*And status > 0*/ And name = @Table) And c.name Not Like 'sysAudit%' Order By colid

Select @coldefinition = ''
Open column_cursor
Fetch Next From column_cursor Into @colname, @typename, @length, @xprec, @xscale, @isnullable
While @@FETCH_STATUS = 0
Begin
	If @typename <> 'sysname'
	Begin
		Select @coldefinition = @coldefinition + '
		[' + @colname + '] [' + @typename + ']'
		If @typename = 'binary' Or @typename = 'char' Or @typename = 'varchar' Or @typename = 'nchar' Or @typename = 'nvarchar' Or @typename = 'varbinary'
			Select @coldefinition = @coldefinition + '(' + Cast(@length As VarChar(6)) + ')'
		Else If @typename = 'decimal' Or @typename = 'numeric'
			Select @coldefinition = @coldefinition + '(' + Cast(@xprec As VarChar(6)) + ',' + Cast(@xscale As VarChar(6)) + ')'
		
		If @isnullable = 0
			Select @coldefinition = @coldefinition + ' NOT NULL,'
		Else
			Select @coldefinition = @coldefinition + ' NULL,'
	End
	Fetch Next From column_cursor Into @colname, @typename, @length, @xprec, @xscale, @isnullable
End

Select @sql = 'Create Table [dbo].[x_' + @Table + '] (' + @coldefinition + '
	sysAuditType char(1) NOT NULL, sysAuditUser char(30) NOT NULL, sysAuditHost char(20) NOT NULL, sysAuditDateTime datetime NOT NULL
) ON [PRIMARY]'

Close column_cursor
Deallocate column_cursor

--Print @sql
Execute(@sql)
If @@ERROR <> 0 RETURN


--- Create Trigger for Audit Trail Table ---

Select @sql = 'If Exists (Select * From dbo.sysobjects where id = object_id(N''[dbo].[audit_' + @Table + ']'') And OBJECTPROPERTY(id, N''IsTrigger'') = 1)
Drop Trigger [dbo].[audit_' + @Table + ']'
--Print @sql
Execute(@sql)

Select @sql = 'Create Trigger [audit_' + @Table + '] On [dbo].[' + @Table + ']
	For Update, Delete
As
Declare @Type Char(1)
If Exists (Select * From INSERTED)
	Select @Type = ''U''
Else
	Select @Type = ''D''
Insert Into [x_' + @Table + '] '

Declare @sysname As sysname, @columns As varchar(6000)
Declare name_cursor Cursor For
Select name From syscolumns Where id = (Select id From sysobjects Where xtype = 'U' /*And status > 0*/ And name = @Table) And name Not Like 'sysAudit%' Order By colid

Select @columns = ''
Open name_cursor
Fetch Next From name_cursor Into @sysname
While @@FETCH_STATUS = 0
Begin
	Select @columns = @columns + @sysname + ', '
	Fetch Next From name_cursor Into @sysname
End
Select @sql = @sql + '(' + @columns + 'sysAuditType, sysAuditUser, sysAuditHost, sysAuditDateTime)
	Select ' + @columns + '@Type, Left(suser_sname(),30), Left(host_name(),20), getdate()
	From DELETED'	

Close name_cursor
Deallocate name_cursor

--Print @sql
Execute(@sql)

END

