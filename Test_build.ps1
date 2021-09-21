#Id Method Action          Fields                                    
#-- ------ ------          ------                                    
#   post   fileuploads.php {[fileToUpload, ], [submit, Upload Image]}

$filepath = "C:\Web\Apache24\htdocs\bofa_statement.csv"

$uri = "http://localhost/php_scripts/upload.php"
$contentType = "multipart/form-data"
$body = @{
    "filepath" = Get-Content($filepath) -Raw
}

Invoke-RestMethod -Uri $uri -Method Post -InFile $filepath 