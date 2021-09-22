###Script to copy the build to Dev env for testing
$build_number=$args[0]

Write-Output $build_number
Write-Output "Copying build to version##################"
Copy-Item -Path "C:\\Users\\rashe\\AppData\\Local\\Jenkins\\.jenkins\\workspace\\Bank_statement_upload\\*" -Destination "C:\\Users\\rashe\\AppData\\Local\\Jenkins\\.jenkins\\workspace\\build\\V_1.$($build_number)" -Recurse
Write-Output "installing to Dev##################"
Copy-Item -Path "C:\\Users\\rashe\\AppData\\Local\\Jenkins\\.jenkins\\workspace\\build\\V_1.$($build_number)\\*" -Destination "C:\\Dev\\Web\\Apache24\\htdocs" -Recurse



