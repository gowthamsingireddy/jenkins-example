pipeline {
    agent any

    stages {
        stage ('Compile Stage') {

            steps {
              sh 'mvn clean compile'
            }
        }

        stage ('Testing Stage') {

            steps {
                sh 'mvn test'
            }
        }


        stage ('Deployment Stage') {
            steps {
               sh 'mvn install'
            }
        }
        stage ('upload artifact to s3') {
            steps {
              s3Upload(file:'**/target/*.war', bucket:'artifact-bucket2.0', path:'**/target/*.war')
            }
        }
    }
}
