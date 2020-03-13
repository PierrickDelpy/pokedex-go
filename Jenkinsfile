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
                docker run -i -d --name "chatboot-container" --network host chatboot npm start
                sleep 10
                curl http://localhost:5555
                docker rm "chatboot-container"
            """
         }
      }
   }
}