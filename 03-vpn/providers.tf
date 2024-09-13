terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version
    }
  }

 backend "s3" {
     bucket = "chilops-terraform-s3-dev"
     key    = "vpn"
     region = "us-east-1"
     dynamodb_table = "chilops-locking-dev"
  }
}

provider "aws" {
  region = "us-east-1"
}