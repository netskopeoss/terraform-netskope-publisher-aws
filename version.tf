terraform {
  required_providers {
    netskope = {
      version = "0.2.0"
      source  = "github.com/netskopeoss/netskope"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  required_version = ">= 1.1.7"
}
