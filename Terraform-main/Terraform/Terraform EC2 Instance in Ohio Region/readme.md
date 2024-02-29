# Terraform EC2 Instance in Ohio Region

This Terraform project automates the deployment and management of an EC2 instance in the default subnet in the Ohio region.

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
    git clone https://github.com/your-username/terraform-ec2-ohio.git
    ```

2. Change into the project directory:

    ```bash
    cd terraform-ec2-ohio
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

6. Once the EC2 instance is created, you can view its details in the AWS Console.

7. To destroy the resources when done:

    ```bash
    terraform destroy
    ```

    Confirm the destruction by entering "yes" when prompted.

## Author

Your Name

Feel free to customize this README.md further based on your specific project details and any additional information you'd like to include.
