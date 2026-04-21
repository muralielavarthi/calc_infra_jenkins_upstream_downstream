terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0" # Pins to major version 6.x
    }
  }
  backend "s3" {
    bucket = "calc-backend-jenkins"
    key    = "calc/backend/up/down-sg"
    region = "us-east-1"
    dynamodb_table = "calc-backend-jenkins-lock"
    
  }
}

provider "aws" {
  region = "us-east-1"
}