###Script to copy the build to Dev env for testing
$build_number=$args[0]
$build_n=$args[1]
$build_bak=$args[2]

Write-Output $build_number
Write-Output $build_n
Write-Output $build_bak

Write-Output "one#########$build_number#########"
Write-Output "two#########$build_n#########"
Write-Output "three#########$build_bak###"
#Copy-Item -Path "C:\\Users\\rashe\\AppData\\Local\\Jenkins\\.jenkins\\workspace\\Bank_statement_upload\\*" -Destination "C:\\Users\\rashe\\AppData\\Local\\Jenkins\\.jenkins\\workspace\\build\\V_1.$($build_n)" -Recurse



#Copy-Item -Path "C:\\Users\\rashe\\AppData\\Local\\Jenkins\\.jenkins\\workspace\\build\\V_1.$($build_n)\\*" -Destination "C:\\Dev\\Web\\Apache24\\htdocs" -Recurse



