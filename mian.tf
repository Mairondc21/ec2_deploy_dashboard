terraform {
    required_providers {
        aws = {
            version = ">= 2.7.0"
            source = "hashicorp/aws"
        }
    }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "bucket-para-salvar-o-estado"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}