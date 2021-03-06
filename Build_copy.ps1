###Script to copy the build to Dev env for testing
$build_number=$args[0]

md -path "C:\\Users\\rashe\\AppData\\Local\\Jenkins\\.jenkins\\workspace\\build\\Bank_statement_upload\\BS_V_1.$($build_number)"

Write-Output "creating a build tag#########$build_number###"
Copy-Item -Path "C:\\Users\\rashe\\AppData\\Local\\Jenkins\\.jenkins\\workspace\\Bank_statement_upload\\*" -Destination "C:\\Users\\rashe\\AppData\\Local\\Jenkins\\.jenkins\\workspace\\build\\Bank_statement_upload\\BS_V_1.$($build_number)" -Recurse


Write-Output "installing#########$build_number### to integration"
Copy-Item -Path "C:\\Users\\rashe\\AppData\\Local\\Jenkins\\.jenkins\\workspace\\build\\Bank_statement_upload\\BS_V_1.$($build_number)\\*" -Destination "C:\\Dev\\Web\\Apache24\\htdocs" -Recurse -Force
Write-Output "Replacing config########## to integration"
Copy-Item -Path "C:\Dev\Web\Apache24\Config_Dev\\*" -Destination "C:\\Dev\\Web\\Apache24\\htdocs" -Recurse -Force
Copy-Item -Path "C:\Dev\Web\Apache24\Config_Dev\\*" -Destination "C:\\Dev\\Web\\Apache24\\htdocs\\php_scripts" -Recurse -Force




