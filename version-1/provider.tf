terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.65.0"
    }
  }

  backend "s3" {
    bucket = "my-terraform-backend-statefile"
    region = "ap-south-1"
    key    = "tf-serverless-website/v1.tfstate"
  }
}


provider "aws" {
  region = "ap-south-1"
  default_tags {
    tags = {
      project = "serverless-demo",
      type    = "web",
      iac     = "terraform"
    }
 }
}