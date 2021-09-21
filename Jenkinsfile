pipeline {
   agent any
   tools {
        maven 'Maven 3.3.9'
        jdk 'jdk8'
   }
   stages {
      stage('Build') {
	  
        steps {
          echo 'Building...'
          echo "Running ${env.BUILD_ID} ${env.BUILD_DISPLAY_NAME} on ${env.NODE_NAME} and JOB ${env.JOB_NAME}"
		  sh 'mvn -Dmaven.test.failure.ignore=true install' 
        }
		post {
                success {
                    junit 'target/surefire-reports/**/*.xml' 
                }
        }
   }
   stage('Test') {
     steps {
        echo 'Testing...'
     }
   }
   stage('Deploy') {
     steps {
       echo 'Deploying...'
     }
   }
  }
}
