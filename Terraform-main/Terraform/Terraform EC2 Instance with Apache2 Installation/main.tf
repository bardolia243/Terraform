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
resource "aws_instance" "this" {
        ami = "ami-05fb0b8c1424f266b"
        instance_type           = "t2.micro"
        key_name = "ohio-key"
        user_data = "${file("install-apache2.sh")}"
        tags = {
                Name = "Assignment-5"
        }
}
output "ipv4" {
        value = aws_instance.this.public_ip
} 
