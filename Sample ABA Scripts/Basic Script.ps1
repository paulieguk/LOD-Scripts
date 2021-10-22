$result=$false
$successmessage = "File Created Successfully."     

$filepath = 'C:\Users\LabUser\Desktop\TestFile.txt' 
$file = Get-Item -Path $filepath -Force
if ($null -ne $file) {
    $successmessage
    $result=$true
}
$result
