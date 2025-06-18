terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0-beta1"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

data "aws_ami" "name" {
 most_recent = true
 owners = ["amazon"]
}

data "aws_security_groups" "name" {
  tags = {
    mywebserver = "http"
  }
}

data "aws_availability_zone" "names" {
  state = "available"
}

output "aws_zones" {
  value = data.aws_availability_zone.names
}

output "aws_ami" {
  value = data.aws_ami.name
}

resource "aws_instance" "myserver" {
  ami = "ami-0e35ddab05955cf57"
  instance_type = "t2.micro"

  tags = {
    Name = "SampleServer"
  }
}