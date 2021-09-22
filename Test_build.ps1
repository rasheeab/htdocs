#Id Method Action          Fields                                    
#-- ------ ------          ------                                    
#   post   fileuploads.php {[fileToUpload, ], [submit, Upload Image]}

$FilePath = 'C:\Web\Apache24\htdocs\bofa_statement.csv';
$URL = 'http://localhost:6060/php_scripts/upload.php';

$fileBytes = [System.IO.File]::ReadAllBytes($FilePath);
$fileEnc = [System.Text.Encoding]::GetEncoding('UTF-8').GetString($fileBytes);
$boundary = [System.Guid]::NewGuid().ToString(); 
$LF = "`r`n";

$bodyLines = ( 
    "--$boundary",
    "Content-Disposition: form-data; name=`"fileToUpload`"; filename=`"bofa_statement.csv`"",
    "Content-Type: application/octet-stream$LF",
    $fileEnc,
    "--$boundary--$LF" 
) -join $LF

Invoke-RestMethod -Uri $URL -Method Post -ContentType "multipart/form-data; boundary=`"$boundary`"" -Body $bodyLines

