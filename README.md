
# Netskope Publisher AWS Module
A Terraform Module that creates Netskope Publishers in an AWS VPC.

## Usage

### Single Netskope Publisher
```hcl
provider "aws" {
  region = "us-east-1"
}

module "publisher_aws" {
  source = "github.com/ns-sbrown/terraform-netskope-publisher-aws"

  publisher_name = "publisher-name"
  aws_key_name   = "ssh-key-name"
  aws_subnet         = "subnet-fff0123456789"
  aws_security_group = "sg-12345678"

}
```

### Multiple Netskope Publishers
```hcl
provider "aws" {
  region = "us-east-1"
}

module "publisher_aws" {
  source = "github.com/ns-sbrown/terraform-netskope-publisher-aws"

  for_each = toset(["01", "02", "03"])

  publisher_name = "publisher-name${each.key}"

  aws_key_name   = "ssh-key-name"
  aws_subnet         = "subnet-fff0123456789"
  aws_security_group = "sg-12345678"

}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.7 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.0 |
| <a name="requirement_netskope"></a> [netskope](#requirement\_netskope) | 0.1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 3.0 |
| <a name="provider_netskope"></a> [netskope](#provider\_netskope) | 0.1.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.NPAPublisher](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| netskope_publishers.Publisher | resource |
| [aws_ami.npa-publisher](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_id"></a> [ami\_id](#input\_ami\_id) | Publisher AMI ID | `string` | `""` | no |
| <a name="input_associate_public_ip_address"></a> [associate\_public\_ip\_address](#input\_associate\_public\_ip\_address) | Publisher Assigned Public IP or Not | `bool` | `true` | no |
| <a name="input_aws_instance_type"></a> [aws\_instance\_type](#input\_aws\_instance\_type) | AWS Instance Type | `string` | `"t3.medium"` | no |
| <a name="input_aws_key_name"></a> [aws\_key\_name](#input\_aws\_key\_name) | AWS SSH Key Name | `string` | n/a | yes |
| <a name="input_aws_security_group"></a> [aws\_security\_group](#input\_aws\_security\_group) | AWS SG Id | `string` | n/a | yes |
| <a name="input_aws_subnet"></a> [aws\_subnet](#input\_aws\_subnet) | AWS Subnet Id | `string` | n/a | yes |
| <a name="input_publisher_name"></a> [publisher\_name](#input\_publisher\_name) | Publisher Name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_publisher_id"></a> [publisher\_id](#output\_publisher\_id) | ID of the Publisher |
| <a name="output_publisher_name"></a> [publisher\_name](#output\_publisher\_name) | Name of the Publisher |
| <a name="output_publisher_private_ip"></a> [publisher\_private\_ip](#output\_publisher\_private\_ip) | Public IP of the Publisher |
| <a name="output_publisher_public_ip"></a> [publisher\_public\_ip](#output\_publisher\_public\_ip) | Public IP of the Publisher |
| <a name="output_publisher_token"></a> [publisher\_token](#output\_publisher\_token) | Public IP of the Publisher |
<!-- END_TF_DOCS -->