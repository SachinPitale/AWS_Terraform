# Terraform Settings Block
terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
    }
  }
}



# Provider Block

provider "aws" {
  profile = "default" 
  region  = "us-east-1"
}

# Resource Block
resource "aws_instance" "ec2test" {
    instance_type = "t2.micro"
    ami = "ami-09d3b3274b6c5d4aa"
  
}