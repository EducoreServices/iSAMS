#I created one for a recent form that we used. Below is the query that I created, but it relies on there being a pupil selector item on the form to match the resposes to a pupil, which may be more complicated than you want:#

SELECT pupilItems.TblParentPortalFeaturesInteractiveFormItemsId ,
pupilResponse.intResponse ,pupilResponse.txtValue AS txtSchoolID ,
pupilResponse.txtSubmitBy ,pupilResponse.dteSubmitDateTime ,
TblPupilManagementPupils.txtSurname ,TblPupilManagementPupils.txtPreName ,
TblPupilManagementPupils.txtForm ,
TbliSAMSManagerUsers.txtFirstname AS txtParentFirst ,
TbliSAMSManagerUsers.txtSurname AS txtParentSur ,
TbliSAMSManagerUsers.txtEmailAddress ,responses.* 
FROM TblParentPortalFeaturesInteractiveFormItems pupilItems 
INNER JOIN TblParentPortalFeaturesInteractiveFormResponse pupilResponse 
INNER JOIN TblPupilManagementPupils 
ON pupilResponse.txtValue = TblPupilManagementPupils.txtSchoolID 
INNER JOIN TbliSAMSManagerUsers 
ON pupilResponse.txtSubmitBy = TbliSAMSManagerUsers.txtUserCode 
ON pupilItems.TblParentPortalFeaturesInteractiveFormItemsId = pupilResponse.intFormItem 
CROSS APPLY 
( SELECT otherItems.txtName ,otherItems.txtDescription ,otherItems.txtType ,
otherItems.intOrder ,otherResponse.TblParentPortalFeaturesInteractiveFormResponseId ,
otherResponse.txtValue 
FROM TblParentPortalFeaturesInteractiveFormItems otherItems 
INNER JOIN TblParentPortalFeaturesInteractiveFormResponse otherResponse 
ON otherItems.TblParentPortalFeaturesInteractiveFormItemsId = otherResponse.intFormItem 
WHERE otherItems.intForm = @intFormId 
AND otherItems.TblParentPortalFeaturesInteractiveFormItemsId != pupilItems.TblParentPortalFeaturesInteractiveFormItemsId 
AND otherResponse.intResponse = pupilResponse.intResponse ) responses 
WHERE pupilItems.intForm = @intFormId 
AND pupilItems.txtType = N'pupil'

#Then in the SSRS report I created 
#a tablix grouped by txtSchoolID in one dimension and intOrder in the other outputting txtValue.