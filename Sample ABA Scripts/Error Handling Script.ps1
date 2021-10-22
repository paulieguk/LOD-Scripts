$result=$false
$evidence=''
$successmessage = "File Created Successfully."

function scoredItem{
 
    $filepath = 'C:\Users\LabUser\Desktop\TestFile.txt'  
    $file = Get-Item -Path $filepath -Force -ErrorAction Ignore
 
    if ($file -eq $null) {
        $global:evidence += "File Not Found.`n"
    }
 
    if ($file.Mode -notmatch '.{3}h.{2}') {
        $global:evidence += "File is not hidden.`n"
    }
 
    if ($file.IsReadOnly -ne $true) {
        $global:evidence += "File is not read-only.`n"
    }

}

try{
    scoredItem
}catch{
    $evidence += $_.Exception.Message
}

if($evidence -eq ''){
    $result = $true
    $evidence = $successMessage
} 

$evidence
$result
