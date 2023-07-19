#This script will take a file and encode it into base64.  This can be used to store a file in the Skillable Activity data.  Add this script to an activity in Skillable 
#to run when the lab is ended/submitted.  The script will just need to be modified with the FileName variable.
#Use case scenario is a user works on a file and saves the file.  If the user desputes the result or the work completed the base64 data can be retrieved from Studio and 
#the orginal file can be recreated using the recreate PowerShell script to confirm the work done or not done.  This script as always is provided as is and is required 
#for any user of the script to confirm its is fit for purpose.

$result = $false
$FilePath = 'filename goes here'
$Evidence = ''

 

        # Check if the file exists
        if (-not (Test-Path $FilePath)) {
            $evidence =  "File not found: $FilePath"
            }
        else {
            # Read the contents of the file
            $fileContent = Get-Content -Path $FilePath -Encoding Byte
      
           # Convert the file content to a base64 string
            $base64String = [System.Convert]::ToBase64String($fileContent)
            $evidence = "File $FilePath found"
            $result = $true
            }


# Output the result
$Evidence
$base64String
$result
