<#
.SYNOPSIS
Converts a base64 string back to its orginal format (tested with Microsoft Office documents).

.DESCRIPTION
This script takes a base64 string and converts it back to its orginal file.

.PARAMETER Base64String
The base64 string representing the document/file.

.PARAMETER OutputFilePath
The path and filename where the document will be saved.

.EXAMPLE
.\Base64ToWord.ps1 -Base64String "SGVsbG8gV29ybGQh" -OutputFilePath "C:\path\to\output\file.docx"
Converts the base64 string "SGVsbG8gV29ybGQh" back to a Word document and saves it to "C:\path\to\output\file.docx".

#>

param (
    [Parameter(Mandatory=$true, HelpMessage="Enter the base64 string representing the document/file.")]
    [string]$Base64String,

    [Parameter(Mandatory=$true, HelpMessage="Enter the path where the document/file will be saved.")]
    [string]$OutputFilePath
)
param (
    [Parameter(Mandatory=$true)]
    [string]$Base64String,

    [Parameter(Mandatory=$true)]
    [string]$OutputFilePath
)

function ConvertFrom-Base64String {
    param (
        [string]$Base64String,
        [string]$OutputFilePath
    )

    try {
        # Convert the base64 string back to a byte array
        $fileContent = [System.Convert]::FromBase64String($Base64String)

        # Write the byte array to the output file
        Set-Content -Path $OutputFilePath -Value $fileContent -Encoding Byte

        Write-Host "File successfully created: $OutputFilePath" -ForegroundColor Green
    } catch {
        Write-Host "Error: $_" -ForegroundColor Red
    }
}

# Call the function to convert base64 string to Word document
ConvertFrom-Base64String -Base64String $Base64String -OutputFilePath $OutputFilePath
