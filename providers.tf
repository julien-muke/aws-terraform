terraform {
  required_version = "1.8.2"
  backend "s3" {
    bucket = "terraform-state-aws-demo"
    key = "s3.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.region
}