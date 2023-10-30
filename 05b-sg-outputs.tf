# AWS EC2 Security Group Terraform Outputs

# Public Bastion Security Group Outputs

output "public_bastion_sg_group_id" {
  description = "ID for public bastion security group"
  value       = module.public_bastion_sg.security_group_id
}

output "public_bastion_sg_group_vpc_id" {
  description = "The VPC ID for public bastion security group"
  value       = module.public_bastion_sg.security_group_vpc_id
}

output "public_bastion_sg_group_name" {
  description = "The name of the public bastion security group"
  value       = module.public_bastion_sg.security_group_name
}

# Private EC2 Instances Security Group Outputs

output "private_sg_group_id" {
  description = "ID for private security group"
  value       = module.private_sg.security_group_id
}

output "private_sg_group_vpc_id" {
  description = "The VPC ID for private security group"
  value       = module.private_sg.security_group_vpc_id
}

output "private_sg_group_name" {
  description = "The name of the private security group"
  value       = module.private_sg.security_group_name
}
