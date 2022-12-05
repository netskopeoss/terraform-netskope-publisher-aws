terraform {
  required_providers {
    netskope = {
      version = ">= 0.2.1"
      source  = "netskopeoss/netskope"
    }
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0"
    }
  }
  required_version = ">= 1.1.7"
}
