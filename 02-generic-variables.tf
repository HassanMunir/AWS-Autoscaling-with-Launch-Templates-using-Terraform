## Setting Input Variables

variable "aws_region" {
  description = "Creating AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Creating Environment Variable"
  type        = string
  default     = "dev"
}

variable "business_divsion" {
  description = "Creating Business Division"
  type        = string
  default     = "sap"
}
