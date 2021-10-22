$result=$false
$successmessage = "File Created Successfully." 

$filepath = 'C:\Users\LabUser\Desktop\TestFile.txt' 
$file = Get-Item -Path $filepath -Force
if ($null -eq $file `
-or $file.Mode -notmatch '.{3}h.{2}' `
-or $file.IsReadOnly -ne $true) {
    "File Not Found or Configured Incorrectly."
}else{
    $successmessage
    $result=$true
}
$result
