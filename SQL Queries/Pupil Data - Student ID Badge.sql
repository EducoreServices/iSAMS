SELECT
TblPupilManagementPupils.txtSchoolID, 
TblPupilManagementPupils.txtForename, 
TblPupilManagementPupils.txtSurname, 
TblPupilManagementPupils.txtMiddleNames, 
TblPupilManagementPupils.txtPreName, 
TblPupilManagementPupils.txtDOB AS dtDOB,
TblPupilManagementPupils.intSystemStatus,
TblPupilManagementPupils.txtForm,
TblPupilManagementPupils.txtGender,

TblPupilManagementPupils.txtAcademicHouse,
TblPupilManagementPupils.txtBoardingHouse,
TblPupilManagementPupils.intNCYear,

TblPupilManagementPupils.intEnrolmentNCYear, 
TblPupilManagementPupils.txtEnrolmentForm, 
TblPupilManagementPupils.txtEnrolmentHouse, 
TblPupilManagementPupils.txtEnrolmentAcademicHouse,
TblPupilManagementPupils.intEnrolmentSchoolYear, 

TblSchoolManagementYears.txtYearName,
EnrolmentYearGroup.txtYearName AS txtEnrolmentYearName
FROM TblPupilManagementPupils 
LEFT OUTER JOIN TblSchoolManagementYears ON TblPupilManagementPupils.intNCYear = TblSchoolManagementYears.intNCYear
LEFT OUTER JOIN TblSchoolManagementYears AS EnrolmentYearGroup ON TblPupilManagementPupils.intEnrolmentNCYear = EnrolmentYearGroup.intNCYear
WHERE TblPupilManagementPupils.txtSchoolID IN (SELECT ID FROM SplitCSV(@txtSchoolID))