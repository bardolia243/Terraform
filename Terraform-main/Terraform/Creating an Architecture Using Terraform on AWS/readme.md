# Terraform AWS Infrastructure Setup

This repository contains Terraform configuration files to set up infrastructure on AWS as per the provided requirements.

## Requirements
- Terraform installed on your local machine
- AWS account with appropriate permissions
- AWS Access Key ID and Secret Access Key configured

## Usage
1. Clone this repository to your local machine.
2. Navigate to the directory containing the Terraform configuration files.
3. Run `terraform init` to initialize Terraform.
4. Run `terraform plan` to review the execution plan.
5. If everything looks good, apply the changes using `terraform apply`.
6. Once the infrastructure is provisioned, SSH into the instances and install Apache2.
7. Access Apache2 by navigating to the public IP address of the instances in a web browser.

## Terraform Configuration Files
- `main.tf`: Contains the main Terraform configuration defining the AWS resources such as VPC, subnets, security groups, internet gateway, network interfaces, and EC2 instances.
- Other `.tf` files: Additional Terraform configuration files can be added as needed for modularization and organization.

## Additional Notes
- Make sure to configure your AWS credentials before running Terraform commands.
- Customize the configuration files as per your specific requirements, such as choosing the appropriate AWS region, AMI, instance type, etc.

