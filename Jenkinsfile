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
                docker run -i -d --name "chatboot-container" -p 5555:5555 --network host chatboot npm start
                sleep 20
                docker rm -f "chatboot-container"
            """
         }
      }
   }
}