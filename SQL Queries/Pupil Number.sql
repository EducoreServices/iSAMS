SELECT        TblScholarshipType.txtName, TblPupilManagementPupils.intNCYear AS Expr1, TblPupilManagementPupils.txtScholarshipList AS Expr2, TblPupilManagementPupils.txtScholarshipInterestList AS Expr4, 
                         TblPupilManagementPupils.txtForename AS Expr6, TblPupilManagementPupils.txtSurname, TblPupilManagementPupils.txtBoardingHouse, 
                         TblScholarship.intScholarshipPercentage
FROM            TblScholarship INNER JOIN
                         TblPupilManagementPupils ON TblScholarship.txtSchoolID = TblPupilManagementPupils.txtSchoolID INNER JOIN
                         TblScholarshipType ON TblScholarship.intScholarshipType = TblScholarshipType.TblScholarshipTypeId;