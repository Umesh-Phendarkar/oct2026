terraform {
  required_version = ">= 1.5.0"

  cloud {
    organization = "oct2026"

    workspaces {
      name = "oct2026"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "bucket01" {
  bucket = "oct-02-2026-808080"

  tags = {
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}
