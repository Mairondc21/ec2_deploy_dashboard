terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = ">= 2.7.0"
        }
    }
    backend "s3" {
    # Lembre de trocar o bucket para o seu, não pode ser o mesmo nome
    bucket         = "bucket-para-salvar-o-estado-223344"
    key            = "terraform-test.tfstate"
    region         = "us-east-1"
    encrypt        = true  # Ativa a criptografia
  }

}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "bucket-para-salvar-o-estado-223344"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
