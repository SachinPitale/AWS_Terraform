# Terraform Output Values

# EC2 Instance Public IP with TOSET
output "instance_publicip" {
  description = "EC2 Instance Public IP"
  value = [for instance in aws_instance.myec2: instance.public_ip]
  
}

output "instance_publicdns" {
  description = "EC2 Instance Public DNS"
  value = [for instance in aws_instance.myec2: instance.public_dns]
  
}

output "instance_publicdns2" {
  description = "EC2 Instance Public DNS"
  value = {for c, instance in aws_instance.myec2: c => instance.public_dns}
  
}