terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.54.1"
    }
  }

 backend "s3" {
     bucket = "chilops-terraform-s3-dev"
     key    = "Databases"
     region = "us-east-1"
     dynamodb_table = "chilops-locking-dev"
  }
}

provider "aws" {
  region = "us-east-1"
}