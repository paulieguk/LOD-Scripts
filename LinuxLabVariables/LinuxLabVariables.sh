#Notes:
# Tag & ExternalId only have values if included when launched by API

echo '
{
    "labLabProfileId":"@lab.LabProfile.Id",
    "labInstanceId":"@lab.LabInstance.Id",
    "labLabInstanceGlobalId":"@lab.LabInstance.GlobalId",
    "labUserId":"@lab.User.Id",
    "labUserExternalId":"@lab.User.ExternalId",
    "labUseremail":"@lab.User.email",
    "lab.User.FirstName":"@lab.User.FirstName",
    "labUserLastName":@lab.User.LastName",
    "UserOrgName":"@lab.User.Organization.Name",
    "labTag":"@lab.Tag" 
}' > /tmp/LODlabdata.json

echo True
