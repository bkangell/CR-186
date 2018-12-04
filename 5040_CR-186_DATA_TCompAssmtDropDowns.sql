----#################### Start table generate output for : CCSNAZ.TCompAssmtCGDropDowns (8a0937) - 5040_CR-186_DATA_TCompAssmtDropDowns ####################
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'CCSNAZ')

	BEGIN

		EXEC ('CREATE SCHEMA [CCSNAZ] AUTHORIZATION [dbo]')

	END
SET NOCOUNT ON;
DECLARE @sqlCmd_28c6c8 nvarchar(max);
DECLARE @exTranCount_28c6c8 int;
DECLARE @paramsXml_28c6c8 xml, @exErrorNumber_28c6c8 int, @exErrorLine_28c6c8 int, @exErrorSeverity_28c6c8 int, @exErrorState_28c6c8 int, @exErrorMessage_28c6c8 nvarchar(max);
SET @exTranCount_28c6c8 = @@TRANCOUNT;
BEGIN TRY
    IF @exTranCount_28c6c8 = 0
        BEGIN TRANSACTION;
    ELSE
        SAVE TRANSACTION ScriptTableStruct_28c6c8;
    --===========================================================================================================================================================
    --===========================================================================================================================================================
    IF NOT EXISTS ( SELECT 1 FROM [sys].[tables] WHERE [name] = N'TCompAssmtDropDowns' AND [schema_id] = SCHEMA_ID( N'CCSNAZ' ) )
    BEGIN
        CREATE TABLE [CCSNAZ].[TCompAssmtDropDowns] ( [ID] int NOT NULL IDENTITY(1,1) );
    END
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtDropDowns', N'U' ) AND [name] = N'Description' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtDropDowns] ADD [Description] varchar(50) NULL;
        GOTO lb28c6c8_ac2;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtDropDowns', N'U' ) AND [name] = N'Description') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column Description on table CCSNAZ.TCompAssmtDropDowns is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb28c6c8_ac2;
    END
 
    IF( ( 50 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtDropDowns', N'U' ) AND [name] = N'Description') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtDropDowns', N'U' ) AND [name] = N'Description') ) )
    BEGIN
        RAISERROR( N'The extant column Description on table CCSNAZ.TCompAssmtDropDowns is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb28c6c8_ac2;
    END
 
    IF( (   50 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtDropDowns', N'U' ) AND [name] = N'Description') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtDropDowns', N'U' ) AND [name] = N'Description') ) )
    BEGIN
        GOTO lb28c6c8_ac2;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtDropDowns] ALTER COLUMN [Description] varchar(50) NULL;
lb28c6c8_ac2:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtDropDowns', N'U' ) AND [name] = N'EffectiveDate' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtDropDowns] ADD [EffectiveDate] datetime NULL;
        GOTO lb28c6c8_ac3;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtDropDowns', N'U' ) AND [name] = N'EffectiveDate') NOT IN ( 61 /* datetime */) )
    BEGIN
        RAISERROR( N'The extant column EffectiveDate on table CCSNAZ.TCompAssmtDropDowns is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb28c6c8_ac3;
    END
 
    IF( (   61 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtDropDowns', N'U' ) AND [name] = N'EffectiveDate') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtDropDowns', N'U' ) AND [name] = N'EffectiveDate') ) )
    BEGIN
        GOTO lb28c6c8_ac3;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtDropDowns] ALTER COLUMN [EffectiveDate] datetime NULL;
lb28c6c8_ac3:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtDropDowns', N'U' ) AND [name] = N'ExpirationDate' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtDropDowns] ADD [ExpirationDate] datetime NULL;
        GOTO lb28c6c8_ac4;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtDropDowns', N'U' ) AND [name] = N'ExpirationDate') NOT IN ( 61 /* datetime */) )
    BEGIN
        RAISERROR( N'The extant column ExpirationDate on table CCSNAZ.TCompAssmtDropDowns is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb28c6c8_ac4;
    END
 
    IF( (   61 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtDropDowns', N'U' ) AND [name] = N'ExpirationDate') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtDropDowns', N'U' ) AND [name] = N'ExpirationDate') ) )
    BEGIN
        GOTO lb28c6c8_ac4;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtDropDowns] ALTER COLUMN [ExpirationDate] datetime NULL;
lb28c6c8_ac4:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtDropDowns', N'U' ) AND [name] = N'DisplayOrder' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtDropDowns] ADD [DisplayOrder] int NULL;
        GOTO lb28c6c8_ac5;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtDropDowns', N'U' ) AND [name] = N'DisplayOrder') NOT IN ( 56 /* int */, 52 /* smallint */, 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column DisplayOrder on table CCSNAZ.TCompAssmtDropDowns is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb28c6c8_ac5;
    END
 
    IF( (   56 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtDropDowns', N'U' ) AND [name] = N'DisplayOrder') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtDropDowns', N'U' ) AND [name] = N'DisplayOrder') ) )
    BEGIN
        GOTO lb28c6c8_ac5;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtDropDowns] ALTER COLUMN [DisplayOrder] int NULL;
lb28c6c8_ac5:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtDropDowns', N'U' ) AND [name] = N'DropDown' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtDropDowns] ADD [DropDown] varchar(5) NULL;
        GOTO lb28c6c8_ac6;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtDropDowns', N'U' ) AND [name] = N'DropDown') NOT IN ( 35 /*text*/, 167 /*varchar*/, 175 /*char*/) )
    BEGIN
        RAISERROR( N'The extant column DropDown on table CCSNAZ.TCompAssmtDropDowns is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb28c6c8_ac6;
    END
 
    IF( ( 5 < (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtDropDowns', N'U' ) AND [name] = N'DropDown') )
     OR ( -1 = (SELECT TOP 1 [max_length] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtDropDowns', N'U' ) AND [name] = N'DropDown') ) )
    BEGIN
        RAISERROR( N'The extant column DropDown on table CCSNAZ.TCompAssmtDropDowns is longer than the configured length. It will not be altered.', 10, 1 ) WITH NOWAIT;
        GOTO lb28c6c8_ac6;
    END
 
    IF( (    5 = (SELECT TOP 1 [max_length]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtDropDowns', N'U' ) AND [name] = N'DropDown') )
    AND (    1 = (SELECT TOP 1 [is_nullable] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtDropDowns', N'U' ) AND [name] = N'DropDown') ) )
    BEGIN
        GOTO lb28c6c8_ac6;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtDropDowns] ALTER COLUMN [DropDown] varchar(5) NULL;
lb28c6c8_ac6:
    IF NOT EXISTS ( SELECT 1 FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtDropDowns', N'U' ) AND [name] = N'TriggerEvent' )
    BEGIN
        ALTER TABLE [CCSNAZ].[TCompAssmtDropDowns] ADD [TriggerEvent] tinyint NULL;
        GOTO lb28c6c8_ac7;
    END
 
    IF( (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtDropDowns', N'U' ) AND [name] = N'TriggerEvent') NOT IN ( 48 /* tinyint */) )
    BEGIN
        RAISERROR( N'The extant column TriggerEvent on table CCSNAZ.TCompAssmtDropDowns is of an incompatible datatype. It cannot be altered.', 16, 1 ) WITH NOWAIT;
        GOTO lb28c6c8_ac7;
    END
 
    IF( (   48 = (SELECT TOP 1 [user_type_id] FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtDropDowns', N'U' ) AND [name] = N'TriggerEvent') )
    AND (    1 = (SELECT TOP 1 [is_nullable]  FROM [sys].[columns] WHERE [object_id] = OBJECT_ID( N'CCSNAZ.TCompAssmtDropDowns', N'U' ) AND [name] = N'TriggerEvent') ) )
    BEGIN
        GOTO lb28c6c8_ac7;
    END
 
    ALTER TABLE [CCSNAZ].[TCompAssmtDropDowns] ALTER COLUMN [TriggerEvent] tinyint NULL;
lb28c6c8_ac7:
    DECLARE @KeyName_28c6c8 nvarchar(max), @Clustering_28c6c8 nvarchar(max);
    SELECT @KeyName_28c6c8 = [kc].[name], @Clustering_28c6c8 = [i].[type_desc]
    FROM [sys].[key_constraints] AS [kc]
    INNER JOIN [sys].[indexes] AS [i]
        ON [kc].[parent_object_id] = [i].[object_id]
       AND [kc].[unique_index_id]  = [i].[index_id]
       AND [kc].[type]             = N'PK'
    WHERE [kc].[parent_object_id] = OBJECT_ID( N'[CCSNAZ].[TCompAssmtDropDowns]', N'U' );
    IF ( ( @KeyName_28c6c8 IS NULL AND @Clustering_28c6c8 IS NULL )
      OR ( @KeyName_28c6c8 <> N'PK_TCompAssmtDropDowns' )
      OR ( @Clustering_28c6c8 <> N'CLUSTERED' ) )
    BEGIN
        IF ( ( COALESCE( @KeyName_28c6c8, N'' ) <> N'PK_TCompAssmtDropDowns' )
          OR ( COALESCE( @Clustering_28c6c8, N'' ) <> N'CLUSTERED' ) )
        BEGIN
            SELECT @sqlCmd_28c6c8 = N'ALTER TABLE [CCSNAZ].[TCompAssmtDropDowns] DROP CONSTRAINT [' + @KeyName_28c6c8 + N'];'
            EXEC [sp_executesql] @sqlCmd_28c6c8;
        END
 
        ALTER TABLE [CCSNAZ].[TCompAssmtDropDowns]
        ADD CONSTRAINT [PK_TCompAssmtDropDowns]
        PRIMARY KEY CLUSTERED (
            [ID] ASC
        );
    END
    --===========================================================================================================================================================
lbQuit_28c6c8:
    RAISERROR( N'Process structure completed successfully', 0, 1 ) WITH NOWAIT;
    IF @exTranCount_28c6c8 = 0
        COMMIT;
END TRY
BEGIN CATCH
    DECLARE @exXactState_28c6c8 int;
    SELECT  @exXactState_28c6c8 = XACT_STATE();
 
     -- Transaction Doomed
    IF @exXactState_28c6c8 = -1
        ROLLBACK;
 
    -- Transaction started by this procedure
    IF @exXactState_28c6c8 = 1 AND @exTranCount_28c6c8 = 0 
        ROLLBACK;
 
    -- Transaction started before this procedure
    IF @exXactState_28c6c8 = 1 AND @exTranCount_28c6c8 > 0
        ROLLBACK TRANSACTION ScriptTableStruct_28c6c8;
 
    SELECT 
        @exErrorMessage_28c6c8  = ERROR_MESSAGE()
       ,@exErrorLine_28c6c8     = ERROR_LINE()
       ,@exErrorNumber_28c6c8   = ERROR_NUMBER()
       ,@exErrorSeverity_28c6c8 = ERROR_SEVERITY()
       ,@exErrorState_28c6c8    = ERROR_STATE()
       ,@paramsXml_28c6c8 = (SELECT
            'STRUCTURE SCRIPT FOR [CCSNAZ].[TCompAssmtDropDowns]' AS [Process]
        FOR XML PATH(N'Params'), ELEMENTS, TYPE);
 
    EXEC [CCSNAZ].[CTSP_Core_Common_RecordException]
        @ProcID        = @@PROCID
       ,@ErrorMessage  = @exErrorMessage_28c6c8
       ,@ErrorLine     = @exErrorLine_28c6c8
       ,@ErrorNumber   = @exErrorNumber_28c6c8
       ,@ErrorSeverity = @exErrorSeverity_28c6c8
       ,@ErrorState    = @exErrorState_28c6c8
       ,@Params        = @paramsXml_28c6c8;
    RAISERROR( N'Process [CCSNAZ].[TCompAssmtDropDowns] structure completed with errors: %d: %s', 16, 1, @exErrorNumber_28c6c8, @exErrorMessage_28c6c8);
END CATCH

----#################### End Table generate output for : CCSNAZ.TCompAssmtDropDowns (28c6c8) ####################
GO
