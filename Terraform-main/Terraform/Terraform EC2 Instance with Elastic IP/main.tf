terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.26.0"
    }
  }
}
provider "aws" {
        secret_key = ""
        access_key = ""
        region = "us-east-2"
}
resource "aws_instance" "this" {
        ami = "ami-05fb0b8c1424f266b"
        instance_type           = "t2.micro"
        key_name = "ohio-key"
        tags = {
                Name = "Assignment-1"
        }
}
resource "aws_eip" "elastic-ip" {
        domain = "vpc"
}
resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.this.id
  allocation_id = aws_eip.elastic-ip.id
}