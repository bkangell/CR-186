----#################### Start table generate output for : CCSNAZ.TCompAssmtCurMed2CG (0f6dc0) 5020_CR-186_TABLE_TCompAssmtCurMed2CG_v4987.sql####################
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'CCSNAZ')

	BEGIN

		EXEC ('CREATE SCHEMA [CCSNAZ] AUTHORIZATION [dbo]')

	END
SET NOCOUNT ON;
DECLARE @sqlCmd_0f6dc0 nvarchar(max);
DECLARE @exTranCount_0f6dc0 int;
DECLARE @paramsXml_0f6dc0 xml, @exErrorNumber_0f6dc0 int, @exErrorLine_0f6dc0 int, @exErrorSeverity_0f6dc0 int, @exErrorState_0f6dc0 int, @exErrorMessage_0f6dc0 nvarchar(max);
SET @exTranCount_0f6dc0 = @@TRANCOUNT;
BEGIN TRY
    IF @exTranCount_0f6dc0 = 0
        BEGIN TRANSACTION;
    ELSE
        SAVE TRANSACTION ScriptTableStruct_0f6dc0;
    --===========================================================================================================================================================
    --===========================================================================================================================================================
    IF NOT EXISTS ( SELECT 1 FROM [sys].[tables] WHERE [name] = N'TCompAssmtCurMed2CG' AND [schema_id] = SCHEMA_ID( N'CCSNAZ' ) )
    BEGIN
        CREATE TABLE [CCSNAZ].[TCompAssmtCurMed2CG] ( [ID] int NOT NULL IDENTITY(1,1) );
    END
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMed2CG', N'U' ) AND [name] = N'MasterKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtCurMed2CG] ADD [MasterKey] int NULL;
        GOTO lb0f6dc0_ac2;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMed2CG', N'U' ) AND [name] = N'MasterKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column MasterKey on table CCSNAZ.TCompAssmtCurMed2CG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb0f6dc0_ac2;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMed2CG', N'U' ) AND [name] = N'MasterKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMed2CG', N'U' ) AND [name] = N'MasterKey') ) )
    BEGIN
        GOTO lb0f6dc0_ac2;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtCurMed2CG] ALTER COLUMN [MasterKey] int NULL;
lb0f6dc0_ac2:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMed2CG', N'U' ) AND [name] = N'MedIssuesDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtCurMed2CG] ADD [MedIssuesDesc] varchar(50) NULL;
        GOTO lb0f6dc0_ac3;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMed2CG', N'U' ) AND [name] = N'MedIssuesDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column MedIssuesDesc on table CCSNAZ.TCompAssmtCurMed2CG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb0f6dc0_ac3;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMed2CG', N'U' ) AND [name] = N'MedIssuesDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMed2CG', N'U' ) AND [name] = N'MedIssuesDesc') ) )
    BEGIN
        RAISERROR( N'The extant column MedIssuesDesc on table CCSNAZ.TCompAssmtCurMed2CG is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb0f6dc0_ac3;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMed2CG', N'U' ) AND [name] = N'MedIssuesDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMed2CG', N'U' ) AND [name] = N'MedIssuesDesc') ) )
    BEGIN
        GOTO lb0f6dc0_ac3;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtCurMed2CG] ALTER COLUMN [MedIssuesDesc] varchar(50) NULL;
lb0f6dc0_ac3:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMed2CG', N'U' ) AND [name] = N'MDosageDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtCurMed2CG] ADD [MDosageDesc] varchar(50) NULL;
        GOTO lb0f6dc0_ac4;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMed2CG', N'U' ) AND [name] = N'MDosageDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column MDosageDesc on table CCSNAZ.TCompAssmtCurMed2CG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb0f6dc0_ac4;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMed2CG', N'U' ) AND [name] = N'MDosageDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMed2CG', N'U' ) AND [name] = N'MDosageDesc') ) )
    BEGIN
        RAISERROR( N'The extant column MDosageDesc on table CCSNAZ.TCompAssmtCurMed2CG is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb0f6dc0_ac4;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMed2CG', N'U' ) AND [name] = N'MDosageDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMed2CG', N'U' ) AND [name] = N'MDosageDesc') ) )
    BEGIN
        GOTO lb0f6dc0_ac4;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtCurMed2CG] ALTER COLUMN [MDosageDesc] varchar(50) NULL;
lb0f6dc0_ac4:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMed2CG', N'U' ) AND [name] = N'MAddInfoDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtCurMed2CG] ADD [MAddInfoDesc] varchar(50) NULL;
        GOTO lb0f6dc0_ac5;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMed2CG', N'U' ) AND [name] = N'MAddInfoDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column MAddInfoDesc on table CCSNAZ.TCompAssmtCurMed2CG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb0f6dc0_ac5;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMed2CG', N'U' ) AND [name] = N'MAddInfoDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMed2CG', N'U' ) AND [name] = N'MAddInfoDesc') ) )
    BEGIN
        RAISERROR( N'The extant column MAddInfoDesc on table CCSNAZ.TCompAssmtCurMed2CG is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb0f6dc0_ac5;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMed2CG', N'U' ) AND [name] = N'MAddInfoDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMed2CG', N'U' ) AND [name] = N'MAddInfoDesc') ) )
    BEGIN
        GOTO lb0f6dc0_ac5;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtCurMed2CG] ALTER COLUMN [MAddInfoDesc] varchar(50) NULL;
lb0f6dc0_ac5:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMed2CG', N'U' ) AND [name] = N'MPrescriberDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtCurMed2CG] ADD [MPrescriberDesc] varchar(50) NULL;
        GOTO lb0f6dc0_ac6;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMed2CG', N'U' ) AND [name] = N'MPrescriberDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column MPrescriberDesc on table CCSNAZ.TCompAssmtCurMed2CG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb0f6dc0_ac6;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMed2CG', N'U' ) AND [name] = N'MPrescriberDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMed2CG', N'U' ) AND [name] = N'MPrescriberDesc') ) )
    BEGIN
        RAISERROR( N'The extant column MPrescriberDesc on table CCSNAZ.TCompAssmtCurMed2CG is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb0f6dc0_ac6;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMed2CG', N'U' ) AND [name] = N'MPrescriberDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMed2CG', N'U' ) AND [name] = N'MPrescriberDesc') ) )
    BEGIN
        GOTO lb0f6dc0_ac6;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtCurMed2CG] ALTER COLUMN [MPrescriberDesc] varchar(50) NULL;
lb0f6dc0_ac6:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMed2CG', N'U' ) AND [name] = N'MRxEndDate' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtCurMed2CG] ADD [MRxEndDate] varchar(50) NULL;
        GOTO lb0f6dc0_ac7;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMed2CG', N'U' ) AND [name] = N'MRxEndDate') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column MRxEndDate on table CCSNAZ.TCompAssmtCurMed2CG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb0f6dc0_ac7;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMed2CG', N'U' ) AND [name] = N'MRxEndDate') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMed2CG', N'U' ) AND [name] = N'MRxEndDate') ) )
    BEGIN
        RAISERROR( N'The extant column MRxEndDate on table CCSNAZ.TCompAssmtCurMed2CG is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb0f6dc0_ac7;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMed2CG', N'U' ) AND [name] = N'MRxEndDate') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMed2CG', N'U' ) AND [name] = N'MRxEndDate') ) )
    BEGIN
        GOTO lb0f6dc0_ac7;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtCurMed2CG] ALTER COLUMN [MRxEndDate] varchar(50) NULL;
lb0f6dc0_ac7:
    DECLARE @KeyName_0f6dc0 nvarchar(max), @Clustering_0f6dc0 nvarchar(max);
    SELECT @KeyName_0f6dc0 = [kc].[name], @Clustering_0f6dc0 = [i].[type_desc]
    FROM [sys].[key_constraints] AS [kc]
    INNER JOIN [sys].[indexes] AS [i]
        ON [kc].[parent_object_id] = [i].[object_id]
       AND [kc].[unique_index_id]  = [i].[index_id]
       AND [kc].[type]             = N'PK'
    WHERE [kc].[parent_object_id] = OBJECT_ID( N'[CCSNAZ].[TCompAssmtCurMed2CG]', N'U' );
    IF ( ( @KeyName_0f6dc0 IS NULL AND @Clustering_0f6dc0 IS NULL )
      OR ( @KeyName_0f6dc0 <> N'PK_TCompAssmtCurMed2CG' )
      OR ( @Clustering_0f6dc0 <> N'CLUSTERED' ) )
    BEGIN
        IF ( ( COALESCE( @KeyName_0f6dc0, N'' ) <> N'PK_TCompAssmtCurMed2CG' )
          OR ( COALESCE( @Clustering_0f6dc0, N'' ) <> N'CLUSTERED' ) )
        BEGIN
            SELECT @sqlCmd_0f6dc0 = N'ALTER TABLE [CCSNAZ].[TCompAssmtCurMed2CG] DROP CONSTRAINT [' + @KeyName_0f6dc0 + N'];'
            EXEC [sp_executesql] @sqlCmd_0f6dc0;
        END
 
        ALTER TABLE [CCSNAZ].[TCompAssmtCurMed2CG]
        ADD CONSTRAINT [PK_TCompAssmtCurMed2CG]
        PRIMARY KEY CLUSTERED (
            [ID] ASC
        );
    END
    --===========================================================================================================================================================
lbQuit_0f6dc0:
    RAISERROR( N'Process structure completed successfully', 0, 1 ) WITH NOWAIT;
    IF @exTranCount_0f6dc0 = 0
        COMMIT;
END TRY
BEGIN CATCH
    DECLARE @exXactState_0f6dc0 int;
    SELECT  @exXactState_0f6dc0 = XACT_STATE();
 
     -- Transaction Doomed
    IF @exXactState_0f6dc0 = -1
        ROLLBACK;
 
    -- Transaction started by this procedure
    IF @exXactState_0f6dc0 = 1 AND @exTranCount_0f6dc0 = 0 
        ROLLBACK;
 
    -- Transaction started before this procedure
    IF @exXactState_0f6dc0 = 1 AND @exTranCount_0f6dc0 > 0
        ROLLBACK TRANSACTION ScriptTableStruct_0f6dc0;
 
    SELECT 
        @exErrorMessage_0f6dc0  = ERROR_MESSAGE()
       ,@exErrorLine_0f6dc0     = ERROR_LINE()
       ,@exErrorNumber_0f6dc0   = ERROR_NUMBER()
       ,@exErrorSeverity_0f6dc0 = ERROR_SEVERITY()
       ,@exErrorState_0f6dc0    = ERROR_STATE()
       ,@paramsXml_0f6dc0 = (SELECT
            'STRUCTURE SCRIPT FOR [CCSNAZ].[TCompAssmtCurMed2CG]' AS [Process]
        FOR XML PATH(N'Params'), ELEMENTS, TYPE);
 
    EXEC [CCSNAZ].[CTSP_Core_Common_RecordException]
        @ProcID        = @@PROCID
       ,@ErrorMessage  = @exErrorMessage_0f6dc0
       ,@ErrorLine     = @exErrorLine_0f6dc0
       ,@ErrorNumber   = @exErrorNumber_0f6dc0
       ,@ErrorSeverity = @exErrorSeverity_0f6dc0
       ,@ErrorState    = @exErrorState_0f6dc0
       ,@Params        = @paramsXml_0f6dc0;
    RAISERROR( N'Process [CCSNAZ].[TCompAssmtCurMed2CG] structure completed with errors: %d: %s', 16, 1, @exErrorNumber_0f6dc0, @exErrorMessage_0f6dc0);
END CATCH
----#################### End Table generate output for : CCSNAZ.TCompAssmtCurMed2CG (0f6dc0) ####################

GO
