variable "publisher_name" {
  description = "Publisher Name"
  type        = string
}

variable "aws_instance_type" {
  description = "AWS Instance Type"
  default     = "t3.medium" //Reccomended Publisher Type
  type        = string
}

variable "associate_public_ip_address" {
  description = "Publisher Assigned Public IP or Not"
  type        = bool
  default     = false
}

variable "aws_monitoring" {
  description = "Enable Detailed Monitoring of AWS Instance"
  type        = bool
  default     = true
}

variable "ebs_optimized" {
  description = "Enable EBS Optimized"
  type        = bool
  default     = true
}

variable "aws_key_name" {
  description = "AWS SSH Key Name"
  type        = string
}

variable "aws_subnet" {
  description = "AWS Subnet Id"
  type        = string
}

variable "aws_security_group" {
  description = "AWS SG Id"
  type        = string
}

variable "ami_id" {
  description = "Publisher AMI ID"
  default     = ""
  type        = string
}

variable "iam_instance_profile" {
  description = "IAM Instance Profile"
  default     = ""
  type        = string
}

variable "http_endpoint" {
  description = "Metadata Option http_endpoint"
  type        = string
  default     = "enabled"
}

variable "http_tokens" {
  description = "Metadata Service Option http_tokens"
  type        = string
  default     = "required"
}