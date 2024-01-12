terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.26.0"
    }
  }
}
provider "aws" {
  region     = var.aws_region
  access_key = ""
  secret_key = ""
}
 
data "aws_availability_zones" "available" {}

resource "aws_default_subnet" "default" {
  availability_zone = data.aws_availability_zones.available.names[0] # Use the first default availability zone
  tags = {
    Name = "DefaultSubnet"
  }
}
resource "aws_instance" "my_instance" {
  ami = var.ami_id
  instance_type = "t2.micro" # Choose the instance type based on your requirements
  subnet_id = aws_default_subnet.default.id

  tags = {
    Name = "MyEC2Instance"
  }
}
