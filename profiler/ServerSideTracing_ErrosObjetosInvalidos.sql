/****************************************************/
/* Created by: SQL Server 2014 Profiler          */
/* Date: 17/06/2016  15:57:17         */
/****************************************************/


-- Create a Queue
DECLARE @rc INT
DECLARE @TraceID INT
DECLARE @maxfilesize BIGINT, @NomeTrace NVARCHAR(500)=N'J:\dados02\ErrosObjetosInvalidos'

IF EXISTS (SELECT * FROM sys.traces WHERE path = @NomeTrace+'.trc')
BEGIN
	RAISERROR('Já existe trace com este nome',16,1);
	RETURN;
END

SET @maxfilesize = 5 

-- Please replace the text InsertFileNameHere, with an appropriate
-- filename prefixed by a path, e.g., c:\MyFolder\MyTrace. The .trc extension
-- will be appended to the filename automatically. If you are writing from
-- remote server to local drive, please use UNC path and make sure server has
-- write access to your network share

EXEC @rc = sp_trace_create @TraceID OUTPUT, 0, @NomeTrace, @maxfilesize, NULL 
IF (@rc != 0) GOTO error

-- Client side File and Table cannot be scripted

-- Set the events
DECLARE @on BIT
SET @on = 1
EXEC sp_trace_setevent @TraceID, 33, 1, @on
EXEC sp_trace_setevent @TraceID, 33, 9, @on
EXEC sp_trace_setevent @TraceID, 33, 3, @on
EXEC sp_trace_setevent @TraceID, 33, 11, @on
EXEC sp_trace_setevent @TraceID, 33, 4, @on
EXEC sp_trace_setevent @TraceID, 33, 6, @on
EXEC sp_trace_setevent @TraceID, 33, 7, @on
EXEC sp_trace_setevent @TraceID, 33, 8, @on
EXEC sp_trace_setevent @TraceID, 33, 10, @on
EXEC sp_trace_setevent @TraceID, 33, 12, @on
EXEC sp_trace_setevent @TraceID, 33, 14, @on
EXEC sp_trace_setevent @TraceID, 33, 20, @on
EXEC sp_trace_setevent @TraceID, 33, 26, @on
EXEC sp_trace_setevent @TraceID, 33, 30, @on
EXEC sp_trace_setevent @TraceID, 33, 31, @on
EXEC sp_trace_setevent @TraceID, 33, 35, @on
EXEC sp_trace_setevent @TraceID, 33, 41, @on
EXEC sp_trace_setevent @TraceID, 33, 49, @on
EXEC sp_trace_setevent @TraceID, 33, 50, @on
EXEC sp_trace_setevent @TraceID, 33, 51, @on
EXEC sp_trace_setevent @TraceID, 33, 60, @on
EXEC sp_trace_setevent @TraceID, 33, 64, @on
EXEC sp_trace_setevent @TraceID, 33, 66, @on


-- Set the Filters
DECLARE @intfilter INT
DECLARE @bigintfilter BIGINT

EXEC sp_trace_setfilter @TraceID, 1, 0, 7, N'The log scan number%'
EXEC sp_trace_setfilter @TraceID, 1, 0, 7, N'%#%'
EXEC sp_trace_setfilter @TraceID, 8, 0, 7, N'VLO%'
EXEC sp_trace_setfilter @TraceID, 8, 0, 7, N'RBT%'
EXEC sp_trace_setfilter @TraceID, 10, 0, 7, N'SQL Server Profiler%'
EXEC sp_trace_setfilter @TraceID, 10, 0, 7, N'Reg Gate%'
SET @intfilter = 50
EXEC sp_trace_setfilter @TraceID, 12, 0, 4, @intfilter

SET @intfilter = 207
EXEC sp_trace_setfilter @TraceID, 31, 0, 0, @intfilter

SET @intfilter = 208
EXEC sp_trace_setfilter @TraceID, 31, 1, 0, @intfilter

EXEC sp_trace_setfilter @TraceID, 35, 0, 6, N'%extra%'
EXEC sp_trace_setfilter @TraceID, 35, 1, 6, N'%pontofrio%'
EXEC sp_trace_setfilter @TraceID, 35, 1, 6, N'%corp%'
EXEC sp_trace_setfilter @TraceID, 35, 1, 6, N'%casasbahia%'
EXEC sp_trace_setfilter @TraceID, 35, 1, 6, N'%barateiro%'
EXEC sp_trace_setfilter @TraceID, 35, 1, 6, N'%fuji%'
EXEC sp_trace_setfilter @TraceID, 35, 1, 6, N'%hp%'
EXEC sp_trace_setfilter @TraceID, 35, 1, 6, N'%abril%'
EXEC sp_trace_setfilter @TraceID, 35, 1, 6, N'%shopfacil%'
EXEC sp_trace_setfilter @TraceID, 35, 1, 6, N'%nike%'
EXEC sp_trace_setfilter @TraceID, 35, 1, 6, N'%cdiscount%'
EXEC sp_trace_setfilter @TraceID, 35, 1, 6, N'%atacado%'

-- Set the trace status to start
EXEC sp_trace_setstatus @TraceID, 1

-- display trace id for future references
SELECT TraceID=@TraceID
GOTO finish

error: 
SELECT ErrorCode=@rc

finish: 
GO


--DECLARE @traceid INT
--SET @traceid = 4

/*
exec sp_trace_setstatus 2, 1 --start
exec sp_trace_setstatus 3, 0 --stop
EXEC sp_trace_setstatus 3, 2; --close
*/
-----------------------------------------

