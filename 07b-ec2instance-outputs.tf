# AWS EC2 Instance Terraform Outputs
output "ec2_bastion_public_instance_ids" {
  description = "List of EC2 bastion public instance IDs"
  value       = module.ec2_public.id
}
output "ec2_bastion_public_ip" {
  description = "List of EC2 bastion public IP addresses assigned to the instances"
  value       = module.ec2_public.public_ip
}
