terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0-beta1"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "myserver" {
  ami = "ami-0e35ddab05955cf57"
  instance_type = "t2.micro"

  tags = {
    Name = "SampleServer"
  }
}