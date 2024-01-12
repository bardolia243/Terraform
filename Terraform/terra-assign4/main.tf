terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.26.0"
    }
  }
}
provider "aws" {
  region     = "us-east-2"
  access_key = ""
  secret_key = ""
}
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}
resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
  tags = {
    Name = "Main"
  }
}
resource "aws_instance" "this" {
        ami = "ami-05fb0b8c1424f266b"
        instance_type           = "t2.micro"
        key_name = "ohio-key"
        subnet_id = aws_subnet.main.id
        tags = {
                Name = "Assignment-1"
        }
}