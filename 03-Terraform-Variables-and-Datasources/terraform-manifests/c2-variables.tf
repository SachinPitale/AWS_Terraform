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