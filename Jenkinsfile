pipeline{
  agent any
  environment {
    PATH = "${PATH}:${getTerraformPath()}"
  }
  stages{
    stage('S3 - create bucket'){
      steps{
        sh "ansible-playbook s3-bucket.yml"
      }
    }
    stage('terraform init and apply - dev'){
      steps{
        sh "terraform init"
        sh returnStatus: true, script: 'terraform workspace new dev'
        sh "terraform init -reconfigure"
        sh "ansible-playbook terraform.yml"
      }
    }

    stage('terraform init and apply - prod'){
      steps{
        sh "terraform init"
        sh returnStatus: true, script: 'terraform workspace new prod'
        sh "terraform init -reconfigure"
        sh "ansible-playbook terraform.yml -e app_env=prod"
      }
    }
  }
}

def getTerraformPath(){
  def tfHome = tool name: 'terraform-server', type: 'terraform'
  return tfHome
}
