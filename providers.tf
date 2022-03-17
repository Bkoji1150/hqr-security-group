
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    postgresql = {
      source = "terraform-providers/postgresql"
    }
  }
  required_version = ">= v1.1.3"
}

provider "aws" {
  region  = "us-east-2"
  profile = "default"
}
