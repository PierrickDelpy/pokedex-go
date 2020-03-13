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
                docker run -it --rm chatboot npm run test
            """
         }
      }
   }
}