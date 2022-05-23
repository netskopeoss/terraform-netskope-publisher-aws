variable "publisher_name" {
  description = "Publisher Name"
  type        = string
}

variable "aws_instance_type" {
  description = "AWS Instance Type - t3.medium is the reccomended instance size."
  default     = "t3.medium"
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
  description = "AWS Security Group Id"
  type        = string
}

variable "ami_id" {
  description = "Publisher AMI ID - Latest will be used if this is not speciified."
  default     = ""
  type        = string
}

variable "iam_instance_profile" {
  description = "IAM Instance Profile - IAM Role to allow SSM"
  default     = ""
  type        = string
}

variable "http_endpoint" {
  description = "Metadata Service enabled or disabled"
  type        = string
  default     = "enabled"
}

variable "http_tokens" {
  description = "Metadata Service V2 optional or reuqired - Use SSM set to required"
  type        = string
  default     = "optional"
}

variable "use_ssm" {
  description = "Use SSM to Register Publisher - Use if http_tokens set to required - Must include IAM Instance Profile if used"
  type        = bool
  default     = false
}