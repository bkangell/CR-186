/*************************** 5500_CR-186_DATA_FormList ***********************************************/
IF EXISTS (SELECT 1 FROM ProviderMaster WHERE CLMTRKNetworkId like 'CCSNAZ')
BEGIN
    /*1 */ INSERT INTO [dbo].[Formlist] ( [Form_Description], [Comment], [WindowLibName], [WindowName], 
						[ReportLibName], [ReportName], [DisplayOrder], [TableName], [EffectiveDate], 
						[ExpirationDate], [AllowEffectiveChange], [SignForm], [MSWordFileName], 
						[ReportOnlyLibName], [ReportOnlyName], [Alterable], [MaintWindowName], 
						[ResubmitButton], [PullPreviousRow], [PrintBarCode], [SignatureType], 
						[LowerCaseForm], [ProgressNoteKey], [LockForm], [ImageOnly], 
						[CategoryKey], [SubTable], [AvailSignaturePos], [CreateEmailKey], 
						[EmailFormDescription], [EmailComment], [CTUserFormsMasterKey], [ROICatKey], 
						[FormSaveState], [MedicalReferralForm], [StaffPINSignatureTypeKey], 
						[HasTrigger], [ReportName1], [ReportName2], [RemoteSyncCapable], 
						[RemoteSyncEnabled], [FormGUID] )
                   SELECT 'Core Assessment Part A (02/08/2018)', NULL, 'AGENCYFORMS', 'wTCompAssmt_PartA_v2', 
				   'AGENCYFORMS', 'rTCompAssmt1A_v2', NULL, 'TCompAssmtA', NULL, 
				   NULL, NULL, 0, NULL, 
				   NULL, NULL, NULL, NULL, 
				   NULL, CONVERT( bit, 1 ), NULL, 2, 
				   NULL, NULL, NULL, CONVERT( bit, 0 ), 
				   NULL, NULL, NULL, NULL, 
				   NULL, NULL, NULL, NULL, 
				   0, NULL, NULL, 
				   NULL, NULL, NULL, NULL, 
				   NULL, NULL
                   WHERE NOT EXISTS ( SELECT 1 FROM [dbo].[Formlist] WHERE 1 = 1
                                         AND [Form_Description]  = 'Core Assessment Part A (02/08/2018)'
                                         AND CONVERT( varchar(max),  [Comment] ) IS NULL
                                         AND [WindowLibName]  = 'AGENCYFORMS                             '
                                         AND [WindowName]  = 'wTCompAssmt_PartA_v2'
                                         AND [ReportLibName]  = 'AGENCYFORMS                             '
                                         AND [ReportName]  = 'rTCompAssmt1A_v2'
                                         AND [DisplayOrder]  IS NULL
                                         AND [TableName]  = 'TCompAssmtA'
                                         AND [EffectiveDate]  IS NULL
                                     );
END

GO