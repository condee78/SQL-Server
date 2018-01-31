USE yourdbname
GO

EXEC sys.sp_cdc_enable_table
	@source_schema = N'dbo',
	@source_name   = N'yourtablename',
	@role_name     = null
GO

