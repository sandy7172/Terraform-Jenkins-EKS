terraform {
  backend "s3" {
    bucket = "cicd-terraform-eks-jenkins-practice"
    key    = "eks/terraform.tfstate"
    region = "us-east-1"
  }
}