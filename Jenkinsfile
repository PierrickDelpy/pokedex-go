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
      stage('deploy') {
         steps {
            sh"""
                docker run -i --name "chatboot-container" chatboot npm start
                sleep 10s
                curl http://localhost:5555
                docker rm "chatboot-container"
            """
         }
      }
   }
}