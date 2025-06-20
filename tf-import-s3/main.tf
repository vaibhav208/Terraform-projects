terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "main" {
  bucket = "my-bucket-2055555555"
}

# cmd - terraform import aws_s3_bucket.main my-bucket-20555 