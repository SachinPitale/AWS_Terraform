# Terraform Output Values

# Output - For Loop with List

output "for_output_list" {
  description = "For loop with list"
  value = [for instance in aws_instance.myec2: instance.public_dns ] 
}

# Output - For Loop with Map
output "for_output_map" {
  description = "for loop with map"
  value = {for instance in aws_instance.myec2: instance.id => instance.public_dns}
}

# Output - For Loop with Map Advanced
output "for_output_map_adavanced" {
  description = "for loop with map adavanced"
  value = { for c, instance in aws_instance.myec2: c => instance.public_dns }
  
}

# Output Legacy Splat Operator (Legacy) - Returns the List

output "legacy_splat_instance_publicdns" {
  description = "Legacy Splat Operator"
  value = aws_instance.myec2.*.public_dns
}

# Output Latest Generalized Splat Operator - Returns the List

output "legacy_splat_instance_publicdns" {
  description = "Generalized latest Splat Operator"
  value = aws_instance.myec2[*].public_dns
}