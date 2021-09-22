pipeline {
   agent any
   stages {
   stage('Build') {
	  
        steps {
          echo "Build Started #########################################"
          echo "Running ${env.BUILD_ID} ${env.BUILD_DISPLAY_NAME} on ${env.NODE_NAME} and JOB ${env.JOB_NAME}"
		  git branch: 'main', credentialsId: 'rash-git', url: 'https://github.com/rasheeab/htdocs.git'
		  echo "Build completed #########################################"
        }
   }
   stage('Install') {
     steps {
   	
		echo "Installing in integration env ###${BUILD_NUMBER}######"
		powershell returnStatus: true, script: ".\\Build_copy.ps1 $BUILD_NUMBER"
		echo "#############Testing post ps1## $BUILD_NUMBER"
        }
   }
   stage('Testing') {
     steps {
   		echo 'Testing Started #########################################'
		powershell returnStatus: true, script: ".\\Test_build.ps1"
		echo 'Testing Completed #########################################'
     }
   }
 
  }
}
