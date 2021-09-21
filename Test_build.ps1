#Id Method Action          Fields                                    
#-- ------ ------          ------                                    
#   post   fileuploads.php {[fileToUpload, ], [submit, Upload Image]}

$fileToUpload = "C:\Web\Apache24\htdocs\bofa_statement.csv"

$uri = "http://localhost/php_scripts/upload.php"
$contentType = "multipart/form-data"
$body = @{
    "fileToUpload" = Get-Content($fileToUpload) -Raw