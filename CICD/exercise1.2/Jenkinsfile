pipeline{
    agent{
        docker{
            image 'gradle:jdk8'
        }

    }
    stages{
        stage('Compile'){ 
            steps{
                
             sh '''
                chmod +x gradlew
                gradle wrapper
                ./gradlew compileJava'''
            }
        }
        stage('Unit Test'){
            steps{

                sh '''
                chmod +x gradlew
                ./gradlew test
                '''
            }
        }
    
    }
}
