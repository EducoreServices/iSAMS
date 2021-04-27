SELECT
  TblPupilManagementPupils.txtFullName AS 'Name'
  ,TblPupilManagementPupils.intNCYear AS 'Year Group'
  ,TblPupilManagementPupils.txtBoardingHouse AS 'Student Type'
  ,[txtValue]
  ,TblPupilManagementPupils.txtAdmissionsStatus
  ,TblPupilManagementPupils.intSystemStatus AS 'Student Status'
FROM
  TblPupilManagementPupils
JOIN 
  [TblPupilManagementCustomFieldContactValue]
ON
TblPupilManagementPupils.intFamily = [TblPupilManagementCustomFieldContactValue].txtContactID
WHERE
  TblPupilManagementPupils.intSystemStatus = 1
AND
  TblPupilManagementPupils.txtAdmissionsStatus = 'In School';





--WHERE
--    TblPupilManagementCustomFieldContactValue.intCustomFieldID = 1;