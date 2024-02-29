terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.26.0"
    }
  }
}
provider "aws" {
  region     = "ami-0e83be36243f524a"
  access_key = "AKIA3WITTRLDJKAJFHKJPUFBNPFF4"
  secret_key = "//BD6YSMTFynvskjghsk1Q1mieDiL5c1CjF44xwB0iZLCl8av6"
}
# Create a VPC
resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "my_vpc"
  }
}
# Create two subnets in the VPC
resource "aws_subnet" "subnet1" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "your_availability_zone_1"
  map_public_ip_on_launch = true
  tags = {
    Name = "subnet1"
  }
}

resource "aws_subnet" "subnet2" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "your_availability_zone_2"
  map_public_ip_on_launch = true
  tags = {
    Name = "subnet2"
  }
}

# Create security group
resource "aws_security_group" "my_security_group" {
  name        = "my_security_group"
  description = "Allow incoming traffic on port 80"
  vpc_id      = aws_vpc.my_vpc.id

  ingress {
    from_port = 80
    to_port   = 80
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create an internet gateway
resource "aws_internet_gateway" "my_igw" {
  vpc_id = aws_vpc.my_vpc.id
}

# Create a network interface
resource "aws_network_interface" "my_network_interface" {
  subnet_id   = aws_subnet.subnet1.id
  security_groups = [aws_security_group.my_security_group.id]
}

# Create an EC2 instance in each subnet
resource "aws_instance" "instance1" {
  ami           = "your_ubuntu_ami_id"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.subnet1.id
  key_name      = "your_key_pair_name"
  network_interface {
    network_interface_ids = [aws_network_interface.my_network_interface.id]
  }
}
resource "aws_instance" "instance2" {
  ami           = "your_ubuntu_ami_id"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.subnet2.id
  key_name      = "your_key_pair_name"
  network_interface {
    network_interface_ids = [aws_network_interface.my_network_interface.id]
  }
}
 
