# Terraform EC2 Instance with Elastic IP

This Terraform project automates the deployment and management of an Amazon EC2 instance with an Elastic IP in the Ohio region.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Author](#author)

## Prerequisites

Before using this Terraform project, make sure you have the following:

1. [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
2. AWS credentials configured with the necessary permissions.

## Usage

1. Clone this repository:

    ```bash
    git clone https://github.com/your-username/terraform-ec2-elastic-ip.git
    ```

2. Change into the project directory:

    ```bash
    cd terraform-ec2-elastic-ip
    ```

3. Initialize Terraform:

    ```bash
    terraform init
    ```

4. Review and adjust the `main.tf` file as needed.

5. Apply the Terraform configuration:

    ```bash
    terraform apply
    ```

    Confirm the changes by entering "yes" when prompted.

6. Once the new EC2 instance with Elastic IP is created, you can view its details in the AWS Console.

7. To destroy the resources when done:

    ```bash
    terraform destroy
    ```

    Confirm the destruction by entering "yes" when prompted.

## Author

Your Name

Feel free to customize this README.md further based on your specific project details and additional information you want to include. Add sections or details that you think are relevant for anyone using or contributing to your Terraform project.
