----#################### Start table generate output for : CCSNAZ.TCompAssmtCurMedCG (11cb8e) - 5010_CR-186_TABLE_TCompAssmtCurMedCG_v4987.sql####################
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'CCSNAZ')
	BEGIN

		EXEC ('CREATE SCHEMA [CCSNAZ] AUTHORIZATION [dbo]')

	END
SET NOCOUNT ON;
DECLARE @sqlCmd_11cb8e nvarchar(max);
DECLARE @exTranCount_11cb8e int;
DECLARE @paramsXml_11cb8e xml, @exErrorNumber_11cb8e int, @exErrorLine_11cb8e int, @exErrorSeverity_11cb8e int, @exErrorState_11cb8e int, @exErrorMessage_11cb8e nvarchar(max);
SET @exTranCount_11cb8e = @@TRANCOUNT;
BEGIN TRY
    IF @exTranCount_11cb8e = 0
        BEGIN TRANSACTION;
    ELSE
        SAVE TRANSACTION ScriptTableStruct_11cb8e;
    --===========================================================================================================================================================
    --===========================================================================================================================================================
    IF NOT EXISTS ( SELECT 1 FROM [sys].[tables] WHERE [name] = N'TCompAssmtCurMedCG' AND [schema_id] = SCHEMA_ID( N'CCSNAZ' ) )
    BEGIN
        CREATE TABLE [CCSNAZ].[TCompAssmtCurMedCG] ( [ID] int NOT NULL IDENTITY(1,1) );
    END
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMedCG', N'U' ) AND [name] = N'MasterKey' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtCurMedCG] ADD [MasterKey] int NULL;
        GOTO lb11cb8e_ac2;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMedCG', N'U' ) AND [name] = N'MasterKey') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column MasterKey on table CCSNAZ.TCompAssmtCurMedCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb11cb8e_ac2;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMedCG', N'U' ) AND [name] = N'MasterKey') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMedCG', N'U' ) AND [name] = N'MasterKey') ) )
    BEGIN
        GOTO lb11cb8e_ac2;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtCurMedCG] ALTER COLUMN [MasterKey] int NULL;
lb11cb8e_ac2:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMedCG', N'U' ) AND [name] = N'PsychoMedDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtCurMedCG] ADD [PsychoMedDesc] varchar(50) NULL;
        GOTO lb11cb8e_ac3;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMedCG', N'U' ) AND [name] = N'PsychoMedDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column PsychoMedDesc on table CCSNAZ.TCompAssmtCurMedCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb11cb8e_ac3;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMedCG', N'U' ) AND [name] = N'PsychoMedDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMedCG', N'U' ) AND [name] = N'PsychoMedDesc') ) )
    BEGIN
        RAISERROR( N'The extant column PsychoMedDesc on table CCSNAZ.TCompAssmtCurMedCG is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb11cb8e_ac3;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMedCG', N'U' ) AND [name] = N'PsychoMedDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMedCG', N'U' ) AND [name] = N'PsychoMedDesc') ) )
    BEGIN
        GOTO lb11cb8e_ac3;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtCurMedCG] ALTER COLUMN [PsychoMedDesc] varchar(50) NULL;
lb11cb8e_ac3:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMedCG', N'U' ) AND [name] = N'PDosageDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtCurMedCG] ADD [PDosageDesc] varchar(50) NULL;
        GOTO lb11cb8e_ac4;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMedCG', N'U' ) AND [name] = N'PDosageDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column PDosageDesc on table CCSNAZ.TCompAssmtCurMedCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb11cb8e_ac4;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMedCG', N'U' ) AND [name] = N'PDosageDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMedCG', N'U' ) AND [name] = N'PDosageDesc') ) )
    BEGIN
        RAISERROR( N'The extant column PDosageDesc on table CCSNAZ.TCompAssmtCurMedCG is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb11cb8e_ac4;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMedCG', N'U' ) AND [name] = N'PDosageDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMedCG', N'U' ) AND [name] = N'PDosageDesc') ) )
    BEGIN
        GOTO lb11cb8e_ac4;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtCurMedCG] ALTER COLUMN [PDosageDesc] varchar(50) NULL;
lb11cb8e_ac4:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMedCG', N'U' ) AND [name] = N'PAddInfoDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtCurMedCG] ADD [PAddInfoDesc] varchar(50) NULL;
        GOTO lb11cb8e_ac5;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMedCG', N'U' ) AND [name] = N'PAddInfoDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column PAddInfoDesc on table CCSNAZ.TCompAssmtCurMedCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb11cb8e_ac5;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMedCG', N'U' ) AND [name] = N'PAddInfoDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMedCG', N'U' ) AND [name] = N'PAddInfoDesc') ) )
    BEGIN
        RAISERROR( N'The extant column PAddInfoDesc on table CCSNAZ.TCompAssmtCurMedCG is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb11cb8e_ac5;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMedCG', N'U' ) AND [name] = N'PAddInfoDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMedCG', N'U' ) AND [name] = N'PAddInfoDesc') ) )
    BEGIN
        GOTO lb11cb8e_ac5;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtCurMedCG] ALTER COLUMN [PAddInfoDesc] varchar(50) NULL;
lb11cb8e_ac5:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMedCG', N'U' ) AND [name] = N'PPrescriberDesc' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtCurMedCG] ADD [PPrescriberDesc] varchar(50) NULL;
        GOTO lb11cb8e_ac6;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMedCG', N'U' ) AND [name] = N'PPrescriberDesc') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column PPrescriberDesc on table CCSNAZ.TCompAssmtCurMedCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb11cb8e_ac6;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMedCG', N'U' ) AND [name] = N'PPrescriberDesc') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMedCG', N'U' ) AND [name] = N'PPrescriberDesc') ) )
    BEGIN
        RAISERROR( N'The extant column PPrescriberDesc on table CCSNAZ.TCompAssmtCurMedCG is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb11cb8e_ac6;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMedCG', N'U' ) AND [name] = N'PPrescriberDesc') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMedCG', N'U' ) AND [name] = N'PPrescriberDesc') ) )
    BEGIN
        GOTO lb11cb8e_ac6;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtCurMedCG] ALTER COLUMN [PPrescriberDesc] varchar(50) NULL;
lb11cb8e_ac6:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMedCG', N'U' ) AND [name] = N'PRxEndDate' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtCurMedCG] ADD [PRxEndDate] varchar(50) NULL;
        GOTO lb11cb8e_ac7;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMedCG', N'U' ) AND [name] = N'PRxEndDate') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column PRxEndDate on table CCSNAZ.TCompAssmtCurMedCG is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb11cb8e_ac7;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMedCG', N'U' ) AND [name] = N'PRxEndDate') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMedCG', N'U' ) AND [name] = N'PRxEndDate') ) )
    BEGIN
        RAISERROR( N'The extant column PRxEndDate on table CCSNAZ.TCompAssmtCurMedCG is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb11cb8e_ac7;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMedCG', N'U' ) AND [name] = N'PRxEndDate') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtCurMedCG', N'U' ) AND [name] = N'PRxEndDate') ) )
    BEGIN
        GOTO lb11cb8e_ac7;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtCurMedCG] ALTER COLUMN [PRxEndDate] varchar(50) NULL;
lb11cb8e_ac7:
    DECLARE @KeyName_11cb8e nvarchar(max), @Clustering_11cb8e nvarchar(max);
    SELECT @KeyName_11cb8e = [kc].[name], @Clustering_11cb8e = [i].[type_desc]
    FROM [sys].[key_constraints] AS [kc]
    INNER JOIN [sys].[indexes] AS [i]
        ON [kc].[parent_object_id] = [i].[object_id]
       AND [kc].[unique_index_id]  = [i].[index_id]
       AND [kc].[type]             = N'PK'
    WHERE [kc].[parent_object_id] = OBJECT_ID( N'[CCSNAZ].[TCompAssmtCurMedCG]', N'U' );
    IF ( ( @KeyName_11cb8e IS NULL AND @Clustering_11cb8e IS NULL )
      OR ( @KeyName_11cb8e <> N'PK_TCompAssmtCurMedCG' )
      OR ( @Clustering_11cb8e <> N'CLUSTERED' ) )
    BEGIN
        IF ( ( COALESCE( @KeyName_11cb8e, N'' ) <> N'PK_TCompAssmtCurMedCG' )
          OR ( COALESCE( @Clustering_11cb8e, N'' ) <> N'CLUSTERED' ) )
        BEGIN
            SELECT @sqlCmd_11cb8e = N'ALTER TABLE [CCSNAZ].[TCompAssmtCurMedCG] DROP CONSTRAINT [' + @KeyName_11cb8e + N'];'
            EXEC [sp_executesql] @sqlCmd_11cb8e;
        END
 
        ALTER TABLE [CCSNAZ].[TCompAssmtCurMedCG]
        ADD CONSTRAINT [PK_TCompAssmtCurMedCG]
        PRIMARY KEY CLUSTERED (
            [ID] ASC
        );
    END
    --===========================================================================================================================================================
lbQuit_11cb8e:
    RAISERROR( N'Process structure completed successfully', 0, 1 ) WITH NOWAIT;
    IF @exTranCount_11cb8e = 0
        COMMIT;
END TRY
BEGIN CATCH
    DECLARE @exXactState_11cb8e int;
    SELECT  @exXactState_11cb8e = XACT_STATE();
 
     -- Transaction Doomed
    IF @exXactState_11cb8e = -1
        ROLLBACK;
 
    -- Transaction started by this procedure
    IF @exXactState_11cb8e = 1 AND @exTranCount_11cb8e = 0 
        ROLLBACK;
 
    -- Transaction started before this procedure
    IF @exXactState_11cb8e = 1 AND @exTranCount_11cb8e > 0
        ROLLBACK TRANSACTION ScriptTableStruct_11cb8e;
 
    SELECT 
        @exErrorMessage_11cb8e  = ERROR_MESSAGE()
       ,@exErrorLine_11cb8e     = ERROR_LINE()
       ,@exErrorNumber_11cb8e   = ERROR_NUMBER()
       ,@exErrorSeverity_11cb8e = ERROR_SEVERITY()
       ,@exErrorState_11cb8e    = ERROR_STATE()
       ,@paramsXml_11cb8e = (SELECT
            'STRUCTURE SCRIPT FOR [CCSNAZ].[TCompAssmtCurMedCG]' AS [Process]
        FOR XML PATH(N'Params'), ELEMENTS, TYPE);
 
    EXEC [CCSNAZ].[CTSP_Core_Common_RecordException]
        @ProcID        = @@PROCID
       ,@ErrorMessage  = @exErrorMessage_11cb8e
       ,@ErrorLine     = @exErrorLine_11cb8e
       ,@ErrorNumber   = @exErrorNumber_11cb8e
       ,@ErrorSeverity = @exErrorSeverity_11cb8e
       ,@ErrorState    = @exErrorState_11cb8e
       ,@Params        = @paramsXml_11cb8e;
    RAISERROR( N'Process [CCSNAZ].[TCompAssmtCurMedCG] structure completed with errors: %d: %s', 16, 1, @exErrorNumber_11cb8e, @exErrorMessage_11cb8e);
END CATCH
----#################### End Table generate output for : CCSNAZ.TCompAssmtCurMedCG (11cb8e) ####################

GO
