###Script to copy the build to Dev env for testing
$build_number=$args[0]
Copy-Item -Path "C:\\Users\\rashe\\AppData\\Local\\Jenkins\\.jenkins\\workspace\\Bank_statement_upload\\* -Destination "C:\\Users\\rashe\\AppData\\Local\\Jenkins\\.jenkins\\workspace\\build\\V_1.$build_number" -Recurse
Copy-Item -Path "C:\\Users\\rashe\\AppData\\Local\\Jenkins\\.jenkins\\workspace\\build\\V_1.$build_number\\* -Destination "C:\\Dev\\Web\\Apache24\\htdocs" -Recurse