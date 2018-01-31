USE yourdbname
GO

EXECUTE sys.sp_cdc_disable_table 
    @source_schema = N'dbo', 
    @source_name = N'yourtablename',
    @capture_instance = N'yourcaptureinstance_name';
GO
