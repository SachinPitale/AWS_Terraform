# Terraform Output Values

output "instance_public_ip" {
  description = "EC2 pulic ip"
  value = aws_instance.myec2.public_ip
  
}

# EC2 Instance Public DNS

output "Instance_public_DNS" {
  description = "EC2 Public DNS name"
  value = aws_instance.myec2.public_dns
  
}