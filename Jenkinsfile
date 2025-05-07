node {

  def registryProjet='docker.io/bmaditoumani/'
  def IMAGE="${registryProjet}srvweb:version-${env.BUILD_ID}"

  stage('Clone') {
    checkout scm
  }

  def img = stage('Build') {
                  docker.build("$IMAGE", '.')
                  }
  stage('RUN') {
    img.withRun("--name run-$BUILD_ID -p 8000:80") { c -> 
    }
  }

  stage('Push') {
    docker.withRegistry('https://registry.hub.docker.com', 'docker_id')
      img.push 'latest'
      img.push()

}
