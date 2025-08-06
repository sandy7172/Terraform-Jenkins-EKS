terraform {
  backend "s3" {
    bucket = "cicd-terraform-eks-jenkins-practice"
    key    = "jenkins/terraform.tfstate"
    region = "us-east-1"

  }
}