# AWS EC2 Instance Terraform Variables
variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
  default     = "t3.micro"
}
variable "instance_keypair" {
  description = "AWS EC2 Instance Key Pair to be associated with EC2 Instance"
  type        = string
  default     = "hm-keypair"
}
variable "private_instance_count" {
  description = "AWS EC2 Private Instances Count"
  type        = number
  default     = 1
}
