USE [msdb]
GO
EXEC msdb.dbo.sp_update_job @job_name=N'CommandLog Cleanup', 
		@notify_level_email=2, 
		@notify_level_page=2, 
		@notify_email_operator_name=N'DBA'
GO
USE [msdb]
GO
DECLARE @schedule_id int
EXEC msdb.dbo.sp_add_jobschedule @job_name=N'CommandLog Cleanup', @name=N'10pm', 
		@enabled=1, 
		@freq_type=4, 
		@freq_interval=1, 
		@freq_subday_type=1, 
		@freq_subday_interval=0, 
		@freq_relative_interval=0, 
		@freq_recurrence_factor=1, 
		@active_start_date=20170814, 
		@active_end_date=99991231, 
		@active_start_time=220000, 
		@active_end_time=235959, @schedule_id = @schedule_id OUTPUT
select @schedule_id
GO

EXEC msdb.dbo.sp_update_job @job_name=N'DatabaseBackup - SYSTEM_DATABASES - FULL', 
		@notify_level_email=2, 
		@notify_level_page=2, 
		@notify_email_operator_name=N'DBA'
GO
USE [msdb]
GO

DECLARE @schedule_id int
EXEC msdb.dbo.sp_add_jobschedule @job_name=N'DatabaseBackup - SYSTEM_DATABASES - FULL', @name=N'10:30pm', 
		@enabled=1, 
		@freq_type=4, 
		@freq_interval=1, 
		@freq_subday_type=1, 
		@freq_subday_interval=0, 
		@freq_relative_interval=0, 
		@freq_recurrence_factor=1, 
		@active_start_date=20170814, 
		@active_end_date=99991231, 
		@active_start_time=223000, 
		@active_end_time=235959, @schedule_id = @schedule_id OUTPUT
select @schedule_id
GO

EXEC msdb.dbo.sp_update_job @job_name=N'DatabaseBackup - USER_DATABASES - FULL', 
		@notify_level_email=2, 
		@notify_level_page=2, 
		@notify_email_operator_name=N'DBA'
GO
USE [msdb]
GO
DECLARE @schedule_id int
EXEC msdb.dbo.sp_add_jobschedule @job_name=N'DatabaseBackup - USER_DATABASES - FULL', @name=N'01:35am', 
		@enabled=1, 
		@freq_type=4, 
		@freq_interval=1, 
		@freq_subday_type=1, 
		@freq_subday_interval=0, 
		@freq_relative_interval=0, 
		@freq_recurrence_factor=1, 
		@active_start_date=20170814, 
		@active_end_date=99991231, 
		@active_start_time=013500, 
		@active_end_time=235959, @schedule_id = @schedule_id OUTPUT
select @schedule_id
GO

EXEC msdb.dbo.sp_update_job @job_name=N'DatabaseIntegrityCheck - SYSTEM_DATABASES', 
		@notify_level_email=2, 
		@notify_level_page=2, 
		@notify_email_operator_name=N'DBA'
GO
USE [msdb]
GO
DECLARE @schedule_id int
EXEC msdb.dbo.sp_add_jobschedule @job_name=N'DatabaseIntegrityCheck - SYSTEM_DATABASES', @name=N'10:45pm', 
		@enabled=1, 
		@freq_type=4, 
		@freq_interval=1, 
		@freq_subday_type=1, 
		@freq_subday_interval=0, 
		@freq_relative_interval=0, 
		@freq_recurrence_factor=1, 
		@active_start_date=20170814, 
		@active_end_date=99991231, 
		@active_start_time=224500, 
		@active_end_time=235959, @schedule_id = @schedule_id OUTPUT
select @schedule_id
GO

EXEC msdb.dbo.sp_update_job @job_name=N'DatabaseIntegrityCheck - USER_DATABASES', 
		@notify_level_email=2, 
		@notify_level_page=2, 
		@notify_email_operator_name=N'DBA'
GO
USE [msdb]
GO
DECLARE @schedule_id int
EXEC msdb.dbo.sp_add_jobschedule @job_name=N'DatabaseIntegrityCheck - USER_DATABASES', @name=N'11:00pm', 
		@enabled=1, 
		@freq_type=4, 
		@freq_interval=1, 
		@freq_subday_type=1, 
		@freq_subday_interval=0, 
		@freq_relative_interval=0, 
		@freq_recurrence_factor=1, 
		@active_start_date=20170814, 
		@active_end_date=99991231, 
		@active_start_time=230000, 
		@active_end_time=235959, @schedule_id = @schedule_id OUTPUT
select @schedule_id
GO

EXEC msdb.dbo.sp_update_job @job_name=N'IndexOptimize - USER_DATABASES', 
		@notify_level_email=2, 
		@notify_level_page=2, 
		@notify_email_operator_name=N'DBA'
GO
USE [msdb]
GO
DECLARE @schedule_id int
EXEC msdb.dbo.sp_add_jobschedule @job_name=N'IndexOptimize - USER_DATABASES', @name=N'12:40am', 
		@enabled=1, 
		@freq_type=4, 
		@freq_interval=1, 
		@freq_subday_type=1, 
		@freq_subday_interval=0, 
		@freq_relative_interval=0, 
		@freq_recurrence_factor=1, 
		@active_start_date=20170814, 
		@active_end_date=99991231, 
		@active_start_time=004000, 
		@active_end_time=235959, @schedule_id = @schedule_id OUTPUT
select @schedule_id
GO

EXEC msdb.dbo.sp_update_job @job_name=N'Output File Cleanup', 
		@notify_level_email=2, 
		@notify_level_page=2, 
		@notify_email_operator_name=N'DBA'
GO
USE [msdb]
GO
DECLARE @schedule_id int
EXEC msdb.dbo.sp_add_jobschedule @job_name=N'Output File Cleanup', @name=N'02:00am', 
		@enabled=1, 
		@freq_type=4, 
		@freq_interval=1, 
		@freq_subday_type=1, 
		@freq_subday_interval=0, 
		@freq_relative_interval=0, 
		@freq_recurrence_factor=1, 
		@active_start_date=20170814, 
		@active_end_date=99991231, 
		@active_start_time=020000, 
		@active_end_time=235959, @schedule_id = @schedule_id OUTPUT
select @schedule_id
GO

EXEC msdb.dbo.sp_update_job @job_name=N'sp_delete_backuphistory', 
		@notify_level_email=2, 
		@notify_level_page=2, 
		@notify_email_operator_name=N'DBA'
GO
USE [msdb]
GO
DECLARE @schedule_id int
EXEC msdb.dbo.sp_add_jobschedule @job_name=N'sp_delete_backuphistory', @name=N'02:10am', 
		@enabled=1, 
		@freq_type=4, 
		@freq_interval=1, 
		@freq_subday_type=1, 
		@freq_subday_interval=0, 
		@freq_relative_interval=0, 
		@freq_recurrence_factor=1, 
		@active_start_date=20170814, 
		@active_end_date=99991231, 
		@active_start_time=021000, 
		@active_end_time=235959, @schedule_id = @schedule_id OUTPUT
select @schedule_id
GO

EXEC msdb.dbo.sp_update_job @job_name=N'sp_purge_jobhistory', 
		@notify_level_email=2, 
		@notify_level_page=2, 
		@notify_email_operator_name=N'DBA'
GO
USE [msdb]
GO
DECLARE @schedule_id int
EXEC msdb.dbo.sp_add_jobschedule @job_name=N'sp_purge_jobhistory', @name=N'02:20am', 
		@enabled=1, 
		@freq_type=4, 
		@freq_interval=1, 
		@freq_subday_type=1, 
		@freq_subday_interval=0, 
		@freq_relative_interval=0, 
		@freq_recurrence_factor=1, 
		@active_start_date=20170814, 
		@active_end_date=99991231, 
		@active_start_time=022000, 
		@active_end_time=235959, @schedule_id = @schedule_id OUTPUT
select @schedule_id
GO