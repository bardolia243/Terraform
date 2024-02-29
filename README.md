# Terraform AWS Infrastructure Deployment

This repository contains Terraform scripts for deploying and managing AWS infrastructure as per the provided assignments and case study.

# Terraform AWS Infrastructure Deployment

This repository contains Terraform scripts for deploying and managing AWS infrastructure based on the provided assignments and a case study.


- Created an EC2 service in the default subnet in the Ohio region using Terraform.


- Destroy the previous deployment.
- Created a new EC2 instance with an Elastic IP.


- Destroy the previous deployment.
- Created 2 EC2 instances in Ohio and N.Virginia respectively.
- Rename the Ohio’s instance to ‘hello-ohio’ and Virginia’s instance to ‘hello-virginia’.


- Destroy the previous deployments.
- Created a VPC with the required components using Terraform.
- Deploy an EC2 instance inside the VPC.


- Destroy the previous deployments.
- Create a script to install apache2.
- Run this script on a newly created EC2 instance.
- Print the IP address of the instance in a file on the local, once deployed.

Creating an Architecture Using Terraform on AWS

You work as a DevOps Engineer in a leading Software Company. Your task is to build an infrastructure safely and efficiently based on the following requirements:

- Using AWS cloud provider and install Apache2.
- Use Ubuntu AMI.
- The architecture should include the following services:
  - Create a template with a VPC, 2 subnets, and 1 instance in each subnet.
  - Attach Security groups, internet gateway, and network interface to the instance.


## Prerequisites

Before using this Terraform project, make sure you have the following:

1. [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
2. AWS credentials configured with the necessary permissions.

## Usage

1. Clone this repository:

    ```bash
    git clone https://github.com/your-username/terraform-aws-infrastructure.git
    ```

2. Change into the project directory:

    ```bash
    cd terraform-aws-infrastructure
    ```

3. Navigate to the specific assignment or case study directory.

4. Initialize Terraform:

    ```bash
    terraform init
    ```

5. Review and adjust the `main.tf` file as needed.

6. Apply the Terraform configuration:

    ```bash
    terraform apply
    ```

    Confirm the changes by entering "yes" when prompted.

7. Once the deployment is complete, review the AWS Console for the created resources.

8. To destroy the resources when done:

    ```bash
    terraform destroy
    ```

    Confirm the destruction by entering "yes" when prompted.

## Author

Your Name

Feel free to customize this README.md further based on your specific project details and any additional information you'd like to include.

