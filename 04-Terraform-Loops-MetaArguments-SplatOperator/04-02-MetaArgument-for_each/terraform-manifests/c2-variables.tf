# Input Variables
# AWS Region
variable "aws_region" {
  description = "Region in which aws resource to be deployed"
  type = string
  default = "us-east-1" 
}

# AWS EC2 Instance Type
variable "instance_type" {
  description = "Default AWS instnace type"
  type = string
  default = "t2.micro"
}

# AWS EC2 Instance Key Pair
variable "instance_keypair" {
  description = "AWS ec2 key pair that need to associated with ec2 instance"
  type = string
  default = "tfkey" 
}

# AWS EC2 Instance Type - List

variable "instance_type_list" {
  description = "EC2 Instnace Type"
  type = list(string)
  default = ["t2.micro","t2.small"]
}

variable "instance_type_map" {
  description = "EC2 insttance types"
  type = map(string)
  default = {
    "dev" = "t2.micro"
    "qa" = "t2.small"
    "prod" = "t3.micro"
  }
  
}