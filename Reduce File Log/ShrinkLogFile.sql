USE yourdbname;
GO
-- Truncate the log by changing the database recovery model to SIMPLE.
ALTER DATABASE yourdbname
SET RECOVERY SIMPLE;
GO
-- Shrink the truncated log file to 1 MB. --> PLEASE MAKE SURE THE FILE LOG NAME !! IMPORTANT
-- You can use "DBInfo.sql" to see the Log Name.
DBCC SHRINKFILE (yourdb_logname, 1);
GO
-- Reset the database recovery model.
ALTER DATABASE yourdbname
SET RECOVERY FULL;
GO
