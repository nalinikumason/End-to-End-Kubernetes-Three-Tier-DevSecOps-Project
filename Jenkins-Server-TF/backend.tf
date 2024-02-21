terraform {
  backend "s3" {
    bucket         = "mybackit"
    region         = "us-east-1"
    key            = "/state/tf/terraform.tfstate"
    dynamodb_table = "Dyno-state"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}
