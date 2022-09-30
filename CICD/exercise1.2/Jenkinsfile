pipeline{
    agent{
        docker {
            image'dev-core:gradle-java-14'
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
