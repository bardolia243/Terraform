# Terraform EC2 Instance with Apache2 Installation

This Terraform project automates the deployment and management of an EC2 instance and installs Apache2 on it using a user data script. The instance IP address is then printed to a local file.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Accessing Instance](#accessing-instance)
- [Author](#author)

## Prerequisites

Before using this Terraform project, make sure you have the following:

1. [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
2. AWS credentials configured with the necessary permissions.

## Usage

1. Clone this repository:

    ```bash
    git clone https://github.com/your-username/terraform-ec2-apache.git
    ```

2. Change into the project directory:

    ```bash
    cd terraform-ec2-apache
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

6. Once the EC2 instance is created and Apache2 is installed, the instance IP address will be printed to a local file (`ip_info.txt`).

7. To destroy the resources when done:

    ```bash
    terraform destroy
    ```

    Confirm the destruction by entering "yes" when prompted.

## Accessing Instance

To access the instance, you can use the public IP address provided in the `ip_info.txt` file.

```bash
ssh ubuntu@<public_ip>
