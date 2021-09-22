###Script to copy the build to Dev env for testing
$build_number=$args[0]
$build_n=$args[1]

Write-Output $build_number
Write-Output "Copying build to version#########$build_number#########"

Copy-Item -Path "C:\\Users\\rashe\\AppData\\Local\\Jenkins\\.jenkins\\workspace\\build\\V_1.$($build_number)\\*" -Destination "C:\\Dev\\Web\\Apache24\\htdocs" -Recurse



Write-Output $build_n
Write-Output "Copying build to version#########$build_n#########"

Copy-Item -Path "C:\\Users\\rashe\\AppData\\Local\\Jenkins\\.jenkins\\workspace\\build\\V_1.$($build_n)\\*" -Destination "C:\\Dev\\Web\\Apache24\\htdocs" -Recurse



