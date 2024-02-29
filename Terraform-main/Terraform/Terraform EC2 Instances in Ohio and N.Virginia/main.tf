terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.26.0"
    }
  }
}
provider "aws" {
        secret_key = "//BD6YSMTFyQ1mkjldskjnslieDiL5c1CjF44xwB0iZLCl8av6"
        access_key = "AKIA3WITTNJLVDVKLRLPUFBNPFF4"
        region = "us-east-2"
        alias = "Oh"
}
provider "aws" {
        secret_key = ""
        access_key = ""
        region = "us-east-1"
        alias = "NV"
}
resource "aws_instance" "this" {
        ami = "ami-05fb0b8c1424f266b"
        instance_type           = "t2.micro"
        key_name = "ohio-key"
        provider = aws.Oh
        tags = {
                Name = "hello-ohio"
        }
}
resource "aws_instance" "this1" {
        ami = "ami-079db87dc4c10ac91"
        instance_type           = "t2.micro"
        provider = aws.NV
        tags = {
                Name = "hello-virginia"
        }
}