# Set '$result' to FALSE so the Activity is not completed by default.
$result = $false

# Query variables. Modify these to match the lab environment.
$file = "${ENV:USERPROFILE}\Documents\output.txt"
$evidence = "The file $file was not found"


# Try/Catch block to suppress any errors.
try {
    # Enter commands to get values.
    $exists = Test-Path -Path $file
    
    # Test output of commands for expected value.
    if ($exists -eq $true) {
        # Set '$result' to TRUE for completing Activity correctly.
        $evidence = "The file $file was found"
        $result = $true
    }
} catch {
    return $result
}

# Return the result of the Activity script.
$evidence
return $result
