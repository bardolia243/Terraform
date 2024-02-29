# Terraform EC2 Instances in Ohio and N.Virginia

This Terraform project automates the deployment and management of two EC2 instances, one in Ohio and the other in N.Virginia.

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
    git clone https://github.com/your-username/terraform-ec2-multi-region.git
    ```

2. Change into the project directory:

    ```bash
    cd terraform-ec2-multi-region
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

6. Once the EC2 instances are created, you can view their details in the AWS Console.

7. To destroy the resources when done:

    ```bash
    terraform destroy
    ```

    Confirm the destruction by entering "yes" when prompted.

## Author

Your Name

Feel free to customize this README.md further based on your specific project details and any additional information you'd like to include.
