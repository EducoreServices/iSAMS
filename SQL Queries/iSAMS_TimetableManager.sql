SELECT TbliSAMSManagerModuleSecurity.intFull, TbliSAMSManagerModuleSecurity.intModify, TbliSAMSManagerModuleSecurity.intWrite, TbliSAMSManagerModuleSecurity.intRead 
FROM TbliSAMSManagerModules 
INNER JOIN TbliSAMSManagerModuleSecurity ON TbliSAMSManagerModules.TbliSAMSManagerModulesID = TbliSAMSManagerModuleSecurity.intModuleID 
WHERE (TbliSAMSManagerModules.txtModuleID = 'iSAMS_TIMETABLEMANAGER' and TbliSAMSManagerModuleSecurity.txtSecurityID = 'T')
