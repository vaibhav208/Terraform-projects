terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0-beta1"
    }
  }
  backend "s3" {
    bucket = "demo-bucket-20555"
    key = "backend.tfstate"
    region = "ap-south-1"
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "myserver" {
  ami = "ami-0e35ddab05955cf57"
  instance_type = "t2.micro"

  tags = {
    Name = "SampleServer"
  }
}