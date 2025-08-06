# VPC
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "Jenkins-vpc"
  cidr = var.vpc_cidr

  azs            = data.aws_availability_zones.azs.names
  public_subnets = var.public_subnets

  enable_dns_hostnames = "true"

  tags = {
    Name        = jenkins-vpc
    Terraform   = "true"
    Environment = "dev"
  }
}

# SG


# Ec2