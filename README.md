# Terraform AWS Infrastructure Deployment

This repository contains Terraform scripts for deploying and managing AWS infrastructure as per the provided assignments and case study.

## Assignments

### Assignment 1

- Create an EC2 service in the default subnet in the Ohio region.

### Assignment 2

- Destroy the previous deployment.
- Create a new EC2 instance with an Elastic IP.

### Assignment 3

- Destroy the previous deployment.
- Create 2 EC2 instances in Ohio and N.Virginia respectively.
- Rename Ohio’s instance to ‘hello-ohio’ and Virginia’s instance to ‘hello-virginia’.

### Assignment 4

- Destroy the previous deployments.
- Create a VPC with the required components using Terraform.
- Deploy an EC2 instance inside the VPC.

### Assignment 5

- Destroy the previous deployments.
- Create a script to install apache2.
- Run this script on a newly created EC2 instance.
- Print the IP address of the instance in a file on the local, once deployed.

## Case Study - Creating an Architecture Using Terraform on AWS

You work as a DevOps Engineer in a leading Software Company. Your task is to build an infrastructure safely and efficiently based on the following requirements:

1. Use AWS cloud provider and install Apache2.
2. Use Ubuntu AMI.

The architecture should include the following services:

1. Create a template with a VPC, 2 subnets, and 1 instance in each subnet.
2. Attach Security groups, internet gateway, and network interface to the instance.

## How to Use

1. Make sure you have Terraform installed on your local machine.
2. Clone this repository:

   ```bash
   git clone https://github.com/your-username/terraform-aws-deployment.git
