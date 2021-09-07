SELECT
TbliSAMSManagerUsers.txtTitle
,TbliSAMSManagerUsers.txtFirstname
,TbliSAMSManagerUsers.txtSurname
,TbliSAMSManagerUsers.txtFullName
,TbliSAMSManagerUsers.txtEmailAddress
FROM
TbliSAMSManagerUsers
WHERE
TbliSAMSManagerUsers.txtUserType = N'Staff'
AND TbliSAMSManagerUsers.txtStatus NOT LIKE N'disabled'
AND TbliSAMSManagerUsers.blnTwoFactorAuthenticationEnabled = N'True'
AND TbliSAMSManagerUsers.blnTwoFactorAuthenticationConfigured = N'False'