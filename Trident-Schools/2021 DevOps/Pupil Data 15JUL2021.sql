SELECT	TblPupilManagementPupils.txtSchoolID,
		txtForename, 
		txtSurname,
		txtType,
		
		Company.txtValue AS 'txtCompany',
		ParentMine.txtValue AS 'txtParentMineNumbers',

		txtEnrolmentDate,
		intEnrolmentNCYear,
		TblScholarship.txtNote AS 'txtScholarshipInterest',
		txtScholarshipInterest AS 'txtPupilTableScholarshipInterest',
		intEnrolmentSchoolYear,
		
		intNCYear,

		AccountCode.txtValue AS 'txtAccountCode',
		PercentOffered.txtValue AS 'txtPercentOffered',
		StartDate.txtValue AS 'txtStartDate',
		ScholarType.txtValue AS 'txtScholarType',
		EndDate.txtValue AS 'txtEndDate'
FROM	TblPupilManagementPupils
LEFT OUTER JOIN TblScholarship ON TblPupilManagementPupils.txtSchoolID = TblScholarship.txtSchoolID AND TblScholarship.intScholarshipType = 1
LEFT OUTER JOIN TblPupilManagementCustomFieldValue AccountCode ON TblPupilManagementPupils.txtSchoolID = AccountCode.txtSchoolId AND AccountCode.intCustomFieldId = 7
LEFT OUTER JOIN TblPupilManagementCustomFieldValue PercentOffered ON TblPupilManagementPupils.txtSchoolID = PercentOffered.txtSchoolId AND PercentOffered.intCustomFieldId = 24
LEFT OUTER JOIN TblPupilManagementCustomFieldValue StartDate ON TblPupilManagementPupils.txtSchoolID = StartDate.txtSchoolId AND StartDate.intCustomFieldId = 25
LEFT OUTER JOIN TblPupilManagementCustomFieldValue ScholarType ON TblPupilManagementPupils.txtSchoolID = ScholarType.txtSchoolId AND ScholarType.intCustomFieldId = 23
LEFT OUTER JOIN TblPupilManagementCustomFieldValue EndDate ON TblPupilManagementPupils.txtSchoolID = EndDate.txtSchoolId AND EndDate.intCustomFieldId = 26
LEFT OUTER JOIN TblPupilManagementAddressLink ON TblPupilManagementPupils.txtSchoolID = TblPupilManagementAddressLink.txtSchoolID
LEFT OUTER JOIN TblPupilManagementAddresses ON TblPupilManagementAddressLink.intAddressID = TblPupilManagementAddresses.TblPupilManagementAddressesID
LEFT OUTER JOIN TblPupilManagementCustomFieldContactValue Company ON TblPupilManagementAddresses.TblPupilManagementAddressesID = Company.txtContactID AND Company.intCustomFieldId = 1
LEFT OUTER JOIN TblPupilManagementCustomFieldContactValue ParentMine ON TblPupilManagementAddresses.TblPupilManagementAddressesID = ParentMine.txtContactID AND ParentMine.intCustomFieldId = 2
WHERE	intSystemStatus = 1