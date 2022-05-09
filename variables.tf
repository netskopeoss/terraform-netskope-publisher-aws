variable "publisher_name" {
  description = "Publisher Name"
  default     = "ns-publisher-tf"
  type        = string
}

variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
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