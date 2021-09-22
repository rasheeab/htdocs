pipeline {
   agent any
   stages {
      stage('Checkout') {
	  
        steps {
           echo "Checkout Started #########################################"
          echo "Running ${env.BUILD_ID} ${env.BUILD_DISPLAY_NAME} on ${env.NODE_NAME} and JOB ${env.JOB_NAME}"
		  checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'rash-git', url: 'https://github.com/rasheeab/htdocs.git']]])
		  echo "Checkout completed #########################################"
        }
   }
   
         stage('Build') {
	  
        steps {
          echo "Build Started #########################################"
          echo "Running ${env.BUILD_ID} ${env.BUILD_DISPLAY_NAME} on ${env.NODE_NAME} and JOB ${env.JOB_NAME}"
		  git branch: 'main', credentialsId: 'rash-git', url: 'https://github.com/rasheeab/htdocs.git'
		  echo "Build completed #########################################"
        }
   }
   stage('Test') {
     steps {
   	
		echo "Installing in integration env #########################################"
		
		echo "#############Testing##${BUILD_NUMBER}"
		echo "#############Build_copy.ps1 ${BUILD_NUMBER}"
		powershell 'invoke-command {$pwd}'
		powershell 'Build_copy.ps1 ${BUILD_NUMBER}'
		
		echo 'Testing Started #########################################'
		powershell 'Test_build.ps1'
		echo 'Testing Completed #########################################'
		
     }
   }
   stage('Deploy') {
     steps {
       echo 'Deploying...'
     }
   }
  }
}
