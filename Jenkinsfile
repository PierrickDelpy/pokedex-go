pipeline {
   agent any

   stages {
      stage('build') {
         steps {
            sh"""docker build -t chatboot ."""
         }
      }
      stage('test') {
         steps {
            sh"""
                docker run -i --rm chatboot npm run test
            """
         }
      }
   }
}