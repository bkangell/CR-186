----#################### Start table generate output for : CCSNAZ.TCompAssmtA (ebab42) - 5000_CR-186_TABLE_TcompAssmtA_v4987.sql####################
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'CCSNAZ')

	BEGIN

		EXEC ('CREATE SCHEMA [CCSNAZ] AUTHORIZATION [dbo]')

	END
SET NOCOUNT ON;
DECLARE @sqlCmd_5ef9e8 nvarchar(max);
DECLARE @exTranCount_5ef9e8 int;
DECLARE @paramsXml_5ef9e8 xml, @exErrorNumber_5ef9e8 int, @exErrorLine_5ef9e8 int, @exErrorSeverity_5ef9e8 int, @exErrorState_5ef9e8 int, @exErrorMessage_5ef9e8 nvarchar(max);
SET @exTranCount_5ef9e8 = @@TRANCOUNT;
BEGIN TRY
    IF @exTranCount_5ef9e8 = 0
        BEGIN TRANSACTION;
    ELSE
        SAVE TRANSACTION ScriptTableStruct_5ef9e8;
    --===========================================================================================================================================================
    --===========================================================================================================================================================
    IF NOT EXISTS ( SELECT 1 FROM [sys].[tables] WHERE [name] = N'TCompAssmtA' AND [schema_id] = SCHEMA_ID( N'CCSNAZ' ) )
    BEGIN
        CREATE TABLE [CCSNAZ].[TCompAssmtA] ( [ID] int NOT NULL IDENTITY(1,1) );
    END
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ClientKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [ClientKey] int NULL;
        GOTO lb5ef9e8_ac2;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ClientKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column ClientKey on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac2;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ClientKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ClientKey') ) )
    BEGIN
        GOTO lb5ef9e8_ac2;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [ClientKey] int NULL;
lb5ef9e8_ac2:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'EnrollmentKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [EnrollmentKey] int NULL;
        GOTO lb5ef9e8_ac3;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'EnrollmentKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column EnrollmentKey on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac3;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'EnrollmentKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'EnrollmentKey') ) )
    BEGIN
        GOTO lb5ef9e8_ac3;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [EnrollmentKey] int NULL;
lb5ef9e8_ac3:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'PacketKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [PacketKey] int NULL;
        GOTO lb5ef9e8_ac4;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'PacketKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column PacketKey on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac4;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'PacketKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'PacketKey') ) )
    BEGIN
        GOTO lb5ef9e8_ac4;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [PacketKey] int NULL;
lb5ef9e8_ac4:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'SavedDate' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [SavedDate] datetime NULL;
        GOTO lb5ef9e8_ac5;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'SavedDate') NOT IN ( 61 /* datetime */) )
    BEGIN
        RAISERROR( N'The extant column SavedDate on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac5;
    END
 
    IF( (   61 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'SavedDate') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'SavedDate') ) )
    BEGIN
        GOTO lb5ef9e8_ac5;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [SavedDate] datetime NULL;
lb5ef9e8_ac5:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'HistoryChangeDate' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [HistoryChangeDate] datetime NULL;
        GOTO lb5ef9e8_ac6;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'HistoryChangeDate') NOT IN ( 61 /* datetime */) )
    BEGIN
        RAISERROR( N'The extant column HistoryChangeDate on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac6;
    END
 
    IF( (   61 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'HistoryChangeDate') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'HistoryChangeDate') ) )
    BEGIN
        GOTO lb5ef9e8_ac6;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [HistoryChangeDate] datetime NULL;
lb5ef9e8_ac6:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ADiabetesYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [ADiabetesYNKey] varchar(1) NULL;
        GOTO lb5ef9e8_ac7;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ADiabetesYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column ADiabetesYNKey on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac7;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ADiabetesYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ADiabetesYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column ADiabetesYNKey on table CCSNAZ.TCompAssmtA is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac7;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ADiabetesYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ADiabetesYNKey') ) )
    BEGIN
        GOTO lb5ef9e8_ac7;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [ADiabetesYNKey] varchar(1) NULL;
lb5ef9e8_ac7:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ADiabetesExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [ADiabetesExp] text NULL;
        GOTO lb5ef9e8_ac8;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ADiabetesExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column ADiabetesExp on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac8;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ADiabetesExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ADiabetesExp') ) )
    BEGIN
        GOTO lb5ef9e8_ac8;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [ADiabetesExp] text NULL;
lb5ef9e8_ac8:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHeartDYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [AHeartDYNKey] varchar(1) NULL;
        GOTO lb5ef9e8_ac9;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHeartDYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column AHeartDYNKey on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac9;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHeartDYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHeartDYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column AHeartDYNKey on table CCSNAZ.TCompAssmtA is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac9;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHeartDYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHeartDYNKey') ) )
    BEGIN
        GOTO lb5ef9e8_ac9;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [AHeartDYNKey] varchar(1) NULL;
lb5ef9e8_ac9:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHeartDExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [AHeartDExp] text NULL;
        GOTO lb5ef9e8_ac10;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHeartDExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column AHeartDExp on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac10;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHeartDExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHeartDExp') ) )
    BEGIN
        GOTO lb5ef9e8_ac10;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [AHeartDExp] text NULL;
lb5ef9e8_ac10:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AStrokeYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [AStrokeYNKey] varchar(1) NULL;
        GOTO lb5ef9e8_ac11;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AStrokeYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column AStrokeYNKey on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac11;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AStrokeYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AStrokeYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column AStrokeYNKey on table CCSNAZ.TCompAssmtA is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac11;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AStrokeYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AStrokeYNKey') ) )
    BEGIN
        GOTO lb5ef9e8_ac11;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [AStrokeYNKey] varchar(1) NULL;
lb5ef9e8_ac11:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AStrokeExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [AStrokeExp] text NULL;
        GOTO lb5ef9e8_ac12;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AStrokeExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column AStrokeExp on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac12;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AStrokeExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AStrokeExp') ) )
    BEGIN
        GOTO lb5ef9e8_ac12;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [AStrokeExp] text NULL;
lb5ef9e8_ac12:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ALungYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [ALungYNKey] varchar(1) NULL;
        GOTO lb5ef9e8_ac13;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ALungYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column ALungYNKey on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac13;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ALungYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ALungYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column ALungYNKey on table CCSNAZ.TCompAssmtA is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac13;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ALungYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ALungYNKey') ) )
    BEGIN
        GOTO lb5ef9e8_ac13;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [ALungYNKey] varchar(1) NULL;
lb5ef9e8_ac13:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ALungDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [ALungDesc] varchar(50) NULL;
        GOTO lb5ef9e8_ac14;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ALungDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column ALungDesc on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac14;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ALungDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ALungDesc') ) )
    BEGIN
        RAISERROR( N'The extant column ALungDesc on table CCSNAZ.TCompAssmtA is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac14;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ALungDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ALungDesc') ) )
    BEGIN
        GOTO lb5ef9e8_ac14;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [ALungDesc] varchar(50) NULL;
lb5ef9e8_ac14:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ALungExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [ALungExp] text NULL;
        GOTO lb5ef9e8_ac15;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ALungExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column ALungExp on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac15;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ALungExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ALungExp') ) )
    BEGIN
        GOTO lb5ef9e8_ac15;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [ALungExp] text NULL;
lb5ef9e8_ac15:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ASeizuresYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [ASeizuresYNKey] varchar(1) NULL;
        GOTO lb5ef9e8_ac16;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ASeizuresYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column ASeizuresYNKey on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac16;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ASeizuresYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ASeizuresYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column ASeizuresYNKey on table CCSNAZ.TCompAssmtA is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac16;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ASeizuresYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ASeizuresYNKey') ) )
    BEGIN
        GOTO lb5ef9e8_ac16;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [ASeizuresYNKey] varchar(1) NULL;
lb5ef9e8_ac16:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ASeizuresExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [ASeizuresExp] text NULL;
        GOTO lb5ef9e8_ac17;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ASeizuresExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column ASeizuresExp on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac17;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ASeizuresExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ASeizuresExp') ) )
    BEGIN
        GOTO lb5ef9e8_ac17;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [ASeizuresExp] text NULL;
lb5ef9e8_ac17:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ACancerYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [ACancerYNKey] varchar(1) NULL;
        GOTO lb5ef9e8_ac18;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ACancerYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column ACancerYNKey on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac18;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ACancerYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ACancerYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column ACancerYNKey on table CCSNAZ.TCompAssmtA is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac18;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ACancerYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ACancerYNKey') ) )
    BEGIN
        GOTO lb5ef9e8_ac18;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [ACancerYNKey] varchar(1) NULL;
lb5ef9e8_ac18:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ACancerDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [ACancerDesc] varchar(50) NULL;
        GOTO lb5ef9e8_ac19;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ACancerDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column ACancerDesc on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac19;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ACancerDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ACancerDesc') ) )
    BEGIN
        RAISERROR( N'The extant column ACancerDesc on table CCSNAZ.TCompAssmtA is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac19;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ACancerDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ACancerDesc') ) )
    BEGIN
        GOTO lb5ef9e8_ac19;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [ACancerDesc] varchar(50) NULL;
lb5ef9e8_ac19:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ACancerExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [ACancerExp] text NULL;
        GOTO lb5ef9e8_ac20;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ACancerExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column ACancerExp on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac20;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ACancerExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ACancerExp') ) )
    BEGIN
        GOTO lb5ef9e8_ac20;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [ACancerExp] text NULL;
lb5ef9e8_ac20:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AKidneyYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [AKidneyYNKey] varchar(1) NULL;
        GOTO lb5ef9e8_ac21;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AKidneyYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column AKidneyYNKey on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac21;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AKidneyYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AKidneyYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column AKidneyYNKey on table CCSNAZ.TCompAssmtA is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac21;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AKidneyYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AKidneyYNKey') ) )
    BEGIN
        GOTO lb5ef9e8_ac21;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [AKidneyYNKey] varchar(1) NULL;
lb5ef9e8_ac21:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AKidneyExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [AKidneyExp] text NULL;
        GOTO lb5ef9e8_ac22;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AKidneyExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column AKidneyExp on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac22;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AKidneyExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AKidneyExp') ) )
    BEGIN
        GOTO lb5ef9e8_ac22;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [AKidneyExp] text NULL;
lb5ef9e8_ac22:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHepatitisYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [AHepatitisYNKey] varchar(1) NULL;
        GOTO lb5ef9e8_ac23;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHepatitisYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column AHepatitisYNKey on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac23;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHepatitisYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHepatitisYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column AHepatitisYNKey on table CCSNAZ.TCompAssmtA is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac23;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHepatitisYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHepatitisYNKey') ) )
    BEGIN
        GOTO lb5ef9e8_ac23;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [AHepatitisYNKey] varchar(1) NULL;
lb5ef9e8_ac23:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHepatitisDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [AHepatitisDesc] varchar(50) NULL;
        GOTO lb5ef9e8_ac24;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHepatitisDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column AHepatitisDesc on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac24;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHepatitisDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHepatitisDesc') ) )
    BEGIN
        RAISERROR( N'The extant column AHepatitisDesc on table CCSNAZ.TCompAssmtA is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac24;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHepatitisDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHepatitisDesc') ) )
    BEGIN
        GOTO lb5ef9e8_ac24;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [AHepatitisDesc] varchar(50) NULL;
lb5ef9e8_ac24:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHepatitisExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [AHepatitisExp] text NULL;
        GOTO lb5ef9e8_ac25;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHepatitisExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column AHepatitisExp on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac25;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHepatitisExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHepatitisExp') ) )
    BEGIN
        GOTO lb5ef9e8_ac25;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [AHepatitisExp] text NULL;
lb5ef9e8_ac25:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AThyroidYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [AThyroidYNKey] varchar(1) NULL;
        GOTO lb5ef9e8_ac26;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AThyroidYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column AThyroidYNKey on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac26;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AThyroidYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AThyroidYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column AThyroidYNKey on table CCSNAZ.TCompAssmtA is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac26;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AThyroidYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AThyroidYNKey') ) )
    BEGIN
        GOTO lb5ef9e8_ac26;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [AThyroidYNKey] varchar(1) NULL;
lb5ef9e8_ac26:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AThyroidDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [AThyroidDesc] varchar(50) NULL;
        GOTO lb5ef9e8_ac27;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AThyroidDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column AThyroidDesc on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac27;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AThyroidDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AThyroidDesc') ) )
    BEGIN
        RAISERROR( N'The extant column AThyroidDesc on table CCSNAZ.TCompAssmtA is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac27;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AThyroidDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AThyroidDesc') ) )
    BEGIN
        GOTO lb5ef9e8_ac27;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [AThyroidDesc] varchar(50) NULL;
lb5ef9e8_ac27:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AThyroidExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [AThyroidExp] text NULL;
        GOTO lb5ef9e8_ac28;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AThyroidExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column AThyroidExp on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac28;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AThyroidExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AThyroidExp') ) )
    BEGIN
        GOTO lb5ef9e8_ac28;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [AThyroidExp] text NULL;
lb5ef9e8_ac28:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHIVKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [AHIVKey] int NULL;
        GOTO lb5ef9e8_ac29;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHIVKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column AHIVKey on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac29;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHIVKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHIVKey') ) )
    BEGIN
        GOTO lb5ef9e8_ac29;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [AHIVKey] int NULL;
lb5ef9e8_ac29:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHIVExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [AHIVExp] text NULL;
        GOTO lb5ef9e8_ac30;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHIVExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column AHIVExp on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac30;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHIVExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHIVExp') ) )
    BEGIN
        GOTO lb5ef9e8_ac30;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [AHIVExp] text NULL;
lb5ef9e8_ac30:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHeadTraumaYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [AHeadTraumaYNKey] varchar(1) NULL;
        GOTO lb5ef9e8_ac31;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHeadTraumaYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column AHeadTraumaYNKey on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac31;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHeadTraumaYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHeadTraumaYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column AHeadTraumaYNKey on table CCSNAZ.TCompAssmtA is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac31;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHeadTraumaYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHeadTraumaYNKey') ) )
    BEGIN
        GOTO lb5ef9e8_ac31;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [AHeadTraumaYNKey] varchar(1) NULL;
lb5ef9e8_ac31:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHeadTraumaExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [AHeadTraumaExp] text NULL;
        GOTO lb5ef9e8_ac32;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHeadTraumaExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column AHeadTraumaExp on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac32;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHeadTraumaExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHeadTraumaExp') ) )
    BEGIN
        GOTO lb5ef9e8_ac32;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [AHeadTraumaExp] text NULL;
lb5ef9e8_ac32:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AChronicYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [AChronicYNKey] varchar(1) NULL;
        GOTO lb5ef9e8_ac33;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AChronicYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column AChronicYNKey on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac33;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AChronicYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AChronicYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column AChronicYNKey on table CCSNAZ.TCompAssmtA is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac33;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AChronicYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AChronicYNKey') ) )
    BEGIN
        GOTO lb5ef9e8_ac33;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [AChronicYNKey] varchar(1) NULL;
lb5ef9e8_ac33:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AChronicDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [AChronicDesc] varchar(50) NULL;
        GOTO lb5ef9e8_ac34;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AChronicDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column AChronicDesc on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac34;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AChronicDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AChronicDesc') ) )
    BEGIN
        RAISERROR( N'The extant column AChronicDesc on table CCSNAZ.TCompAssmtA is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac34;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AChronicDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AChronicDesc') ) )
    BEGIN
        GOTO lb5ef9e8_ac34;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [AChronicDesc] varchar(50) NULL;
lb5ef9e8_ac34:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AChronicExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [AChronicExp] text NULL;
        GOTO lb5ef9e8_ac35;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AChronicExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column AChronicExp on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac35;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AChronicExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AChronicExp') ) )
    BEGIN
        GOTO lb5ef9e8_ac35;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [AChronicExp] text NULL;
lb5ef9e8_ac35:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AOtherHealthExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [AOtherHealthExp] text NULL;
        GOTO lb5ef9e8_ac36;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AOtherHealthExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column AOtherHealthExp on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac36;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AOtherHealthExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AOtherHealthExp') ) )
    BEGIN
        GOTO lb5ef9e8_ac36;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [AOtherHealthExp] text NULL;
lb5ef9e8_ac36:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AAllergiesYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [AAllergiesYNKey] varchar(1) NULL;
        GOTO lb5ef9e8_ac37;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AAllergiesYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column AAllergiesYNKey on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac37;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AAllergiesYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AAllergiesYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column AAllergiesYNKey on table CCSNAZ.TCompAssmtA is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac37;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AAllergiesYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AAllergiesYNKey') ) )
    BEGIN
        GOTO lb5ef9e8_ac37;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [AAllergiesYNKey] varchar(1) NULL;
lb5ef9e8_ac37:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AAllergiesExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [AAllergiesExp] text NULL;
        GOTO lb5ef9e8_ac38;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AAllergiesExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column AAllergiesExp on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac38;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AAllergiesExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AAllergiesExp') ) )
    BEGIN
        GOTO lb5ef9e8_ac38;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [AAllergiesExp] text NULL;
lb5ef9e8_ac38:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ASurgeriesYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [ASurgeriesYNKey] varchar(1) NULL;
        GOTO lb5ef9e8_ac39;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ASurgeriesYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column ASurgeriesYNKey on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac39;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ASurgeriesYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ASurgeriesYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column ASurgeriesYNKey on table CCSNAZ.TCompAssmtA is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac39;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ASurgeriesYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ASurgeriesYNKey') ) )
    BEGIN
        GOTO lb5ef9e8_ac39;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [ASurgeriesYNKey] varchar(1) NULL;
lb5ef9e8_ac39:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ASurgeriesExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [ASurgeriesExp] text NULL;
        GOTO lb5ef9e8_ac40;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ASurgeriesExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column ASurgeriesExp on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac40;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ASurgeriesExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ASurgeriesExp') ) )
    BEGIN
        GOTO lb5ef9e8_ac40;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [ASurgeriesExp] text NULL;
lb5ef9e8_ac40:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'APregnantYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [APregnantYNKey] varchar(1) NULL;
        GOTO lb5ef9e8_ac41;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'APregnantYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column APregnantYNKey on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac41;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'APregnantYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'APregnantYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column APregnantYNKey on table CCSNAZ.TCompAssmtA is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac41;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'APregnantYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'APregnantYNKey') ) )
    BEGIN
        GOTO lb5ef9e8_ac41;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [APregnantYNKey] varchar(1) NULL;
lb5ef9e8_ac41:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'APregnantExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [APregnantExp] text NULL;
        GOTO lb5ef9e8_ac42;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'APregnantExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column APregnantExp on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac42;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'APregnantExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'APregnantExp') ) )
    BEGIN
        GOTO lb5ef9e8_ac42;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [APregnantExp] text NULL;
lb5ef9e8_ac42:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AAssistanceYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [AAssistanceYNKey] varchar(1) NULL;
        GOTO lb5ef9e8_ac43;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AAssistanceYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column AAssistanceYNKey on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac43;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AAssistanceYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AAssistanceYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column AAssistanceYNKey on table CCSNAZ.TCompAssmtA is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac43;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AAssistanceYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AAssistanceYNKey') ) )
    BEGIN
        GOTO lb5ef9e8_ac43;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [AAssistanceYNKey] varchar(1) NULL;
lb5ef9e8_ac43:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AAssistanceExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [AAssistanceExp] text NULL;
        GOTO lb5ef9e8_ac44;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AAssistanceExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column AAssistanceExp on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac44;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AAssistanceExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AAssistanceExp') ) )
    BEGIN
        GOTO lb5ef9e8_ac44;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [AAssistanceExp] text NULL;
lb5ef9e8_ac44:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AFamHistExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [AFamHistExp] text NULL;
        GOTO lb5ef9e8_ac45;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AFamHistExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column AFamHistExp on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac45;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AFamHistExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AFamHistExp') ) )
    BEGIN
        GOTO lb5ef9e8_ac45;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [AFamHistExp] text NULL;
lb5ef9e8_ac45:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'APCPLastDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [APCPLastDesc] varchar(50) NULL;
        GOTO lb5ef9e8_ac46;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'APCPLastDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column APCPLastDesc on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac46;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'APCPLastDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'APCPLastDesc') ) )
    BEGIN
        RAISERROR( N'The extant column APCPLastDesc on table CCSNAZ.TCompAssmtA is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac46;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'APCPLastDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'APCPLastDesc') ) )
    BEGIN
        GOTO lb5ef9e8_ac46;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [APCPLastDesc] varchar(50) NULL;
lb5ef9e8_ac46:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ASideEffectsYNKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [ASideEffectsYNKey] varchar(1) NULL;
        GOTO lb5ef9e8_ac47;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ASideEffectsYNKey') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column ASideEffectsYNKey on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac47;
    END
 
    IF( ( 1 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ASideEffectsYNKey') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ASideEffectsYNKey') ) )
    BEGIN
        RAISERROR( N'The extant column ASideEffectsYNKey on table CCSNAZ.TCompAssmtA is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac47;
    END
 
    IF( (    1 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ASideEffectsYNKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ASideEffectsYNKey') ) )
    BEGIN
        GOTO lb5ef9e8_ac47;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [ASideEffectsYNKey] varchar(1) NULL;
lb5ef9e8_ac47:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ASideEffectsExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [ASideEffectsExp] text NULL;
        GOTO lb5ef9e8_ac48;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ASideEffectsExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column ASideEffectsExp on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac48;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ASideEffectsExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'ASideEffectsExp') ) )
    BEGIN
        GOTO lb5ef9e8_ac48;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [ASideEffectsExp] text NULL;
lb5ef9e8_ac48:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AEfficacyExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [AEfficacyExp] text NULL;
        GOTO lb5ef9e8_ac49;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AEfficacyExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column AEfficacyExp on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac49;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AEfficacyExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AEfficacyExp') ) )
    BEGIN
        GOTO lb5ef9e8_ac49;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [AEfficacyExp] text NULL;
lb5ef9e8_ac49:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AOtherMedExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [AOtherMedExp] text NULL;
        GOTO lb5ef9e8_ac50;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AOtherMedExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column AOtherMedExp on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac50;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AOtherMedExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AOtherMedExp') ) )
    BEGIN
        GOTO lb5ef9e8_ac50;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [AOtherMedExp] text NULL;
lb5ef9e8_ac50:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'PersonsPresentExp' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [PersonsPresentExp] text NULL;
        GOTO lb5ef9e8_ac51;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'PersonsPresentExp') NOT IN ( 35 /* text */) )
    BEGIN
        RAISERROR( N'The extant column PersonsPresentExp on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac51;
    END
 
    IF( (   35 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'PersonsPresentExp') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'PersonsPresentExp') ) )
    BEGIN
        GOTO lb5ef9e8_ac51;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [PersonsPresentExp] text NULL;
lb5ef9e8_ac51:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'RefSourceOtherDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [RefSourceOtherDesc] varchar(50) NULL;
        GOTO lb5ef9e8_ac52;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'RefSourceOtherDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column RefSourceOtherDesc on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac52;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'RefSourceOtherDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'RefSourceOtherDesc') ) )
    BEGIN
        RAISERROR( N'The extant column RefSourceOtherDesc on table CCSNAZ.TCompAssmtA is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac52;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'RefSourceOtherDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'RefSourceOtherDesc') ) )
    BEGIN
        GOTO lb5ef9e8_ac52;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [RefSourceOtherDesc] varchar(50) NULL;
lb5ef9e8_ac52:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHeartDDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [AHeartDDesc] varchar(50) NULL;
        GOTO lb5ef9e8_ac53;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHeartDDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column AHeartDDesc on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac53;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHeartDDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHeartDDesc') ) )
    BEGIN
        RAISERROR( N'The extant column AHeartDDesc on table CCSNAZ.TCompAssmtA is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac53;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHeartDDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'AHeartDDesc') ) )
    BEGIN
        GOTO lb5ef9e8_ac53;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [AHeartDDesc] varchar(50) NULL;
lb5ef9e8_ac53:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'EvaluationDate' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [EvaluationDate] datetime NULL;
        GOTO lb5ef9e8_ac54;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'EvaluationDate') NOT IN ( 61 /* datetime */) )
    BEGIN
        RAISERROR( N'The extant column EvaluationDate on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac54;
    END
 
    IF( (   61 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'EvaluationDate') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'EvaluationDate') ) )
    BEGIN
        GOTO lb5ef9e8_ac54;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [EvaluationDate] datetime NULL;
lb5ef9e8_ac54:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'EvaluatorKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtA] ADD [EvaluatorKey] int NULL;
        GOTO lb5ef9e8_ac55;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'EvaluatorKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column EvaluatorKey on table CCSNAZ.TCompAssmtA is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb5ef9e8_ac55;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'EvaluatorKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtA', N'U' ) AND [name] = N'EvaluatorKey') ) )
    BEGIN
        GOTO lb5ef9e8_ac55;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtA] ALTER COLUMN [EvaluatorKey] int NULL;
lb5ef9e8_ac55:
    DECLARE @KeyName_5ef9e8 nvarchar(max), @Clustering_5ef9e8 nvarchar(max);
    SELECT @KeyName_5ef9e8 = [kc].[name], @Clustering_5ef9e8 = [i].[type_desc]
    FROM [sys].[key_constraints] AS [kc]
    INNER JOIN [sys].[indexes] AS [i]
        ON [kc].[parent_object_id] = [i].[object_id]
       AND [kc].[unique_index_id]  = [i].[index_id]
       AND [kc].[type]             = N'PK'
    WHERE [kc].[parent_object_id] = OBJECT_ID( N'[CCSNAZ].[TCompAssmtA]', N'U' );
    IF ( ( @KeyName_5ef9e8 IS NULL AND @Clustering_5ef9e8 IS NULL )
      OR ( @KeyName_5ef9e8 <> N'PK_TCompAssmtA' )
      OR ( @Clustering_5ef9e8 <> N'CLUSTERED' ) )
    BEGIN
        IF ( ( COALESCE( @KeyName_5ef9e8, N'' ) <> N'PK_TCompAssmtA' )
          OR ( COALESCE( @Clustering_5ef9e8, N'' ) <> N'CLUSTERED' ) )
        BEGIN
            SELECT @sqlCmd_5ef9e8 = N'ALTER TABLE [CCSNAZ].[TCompAssmtA] DROP CONSTRAINT [' + @KeyName_5ef9e8 + N'];'
            EXEC [sp_executesql] @sqlCmd_5ef9e8;
        END
 
        ALTER TABLE [CCSNAZ].[TCompAssmtA]
        ADD CONSTRAINT [PK_TCompAssmtA]
        PRIMARY KEY CLUSTERED (
            [ID] ASC
        );
    END
    --===========================================================================================================================================================
lbQuit_5ef9e8:
    RAISERROR( N'Process structure completed successfully', 0, 1 ) WITH NOWAIT;
    IF @exTranCount_5ef9e8 = 0
        COMMIT;
END TRY
BEGIN CATCH
    DECLARE @exXactState_5ef9e8 int;
    SELECT  @exXactState_5ef9e8 = XACT_STATE();
 
     -- Transaction Doomed
    IF @exXactState_5ef9e8 = -1
        ROLLBACK;
 
    -- Transaction started by this procedure
    IF @exXactState_5ef9e8 = 1 AND @exTranCount_5ef9e8 = 0 
        ROLLBACK;
 
    -- Transaction started before this procedure
    IF @exXactState_5ef9e8 = 1 AND @exTranCount_5ef9e8 > 0
        ROLLBACK TRANSACTION ScriptTableStruct_5ef9e8;
 
    SELECT 
        @exErrorMessage_5ef9e8  = ERROR_MESSAGE()
       ,@exErrorLine_5ef9e8     = ERROR_LINE()
       ,@exErrorNumber_5ef9e8   = ERROR_NUMBER()
       ,@exErrorSeverity_5ef9e8 = ERROR_SEVERITY()
       ,@exErrorState_5ef9e8    = ERROR_STATE()
       ,@paramsXml_5ef9e8 = (SELECT
            'STRUCTURE SCRIPT FOR [CCSNAZ].[TCompAssmtA]' AS [Process]
        FOR XML PATH(N'Params'), ELEMENTS, TYPE);
 
    EXEC [CCSNAZ].[CTSP_Core_Common_RecordException]
        @ProcID        = @@PROCID
       ,@ErrorMessage  = @exErrorMessage_5ef9e8
       ,@ErrorLine     = @exErrorLine_5ef9e8
       ,@ErrorNumber   = @exErrorNumber_5ef9e8
       ,@ErrorSeverity = @exErrorSeverity_5ef9e8
       ,@ErrorState    = @exErrorState_5ef9e8
       ,@Params        = @paramsXml_5ef9e8;
    RAISERROR( N'Process [CCSNAZ].[TCompAssmtA] structure completed with errors: %d: %s', 16, 1, @exErrorNumber_5ef9e8, @exErrorMessage_5ef9e8);
END CATCH
----#################### End Table generate output for : CCSNAZ.TCompAssmtA (5ef9e8) ####################

GO
