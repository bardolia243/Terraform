# Automating Strapi CMS Installation on Azure with Terraform

This Terraform project automates the installation of Strapi CMS on Azure. It creates a virtual machine, sets up networking, and runs a script to install and start Strapi.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Accessing Strapi](#accessing-strapi)
- [Author](#author)

## Prerequisites

Before using this Terraform project, make sure you have the following:

1. [Terraform](https://www.terraform.io/downloads.html) installed on your local machine.
2. An Azure subscription and Azure CLI configured.

## Usage

1. Clone this repository:

    ```bash
    git clone https://github.com/your-username/terraform-strapi-azure.git
    ```

2. Change into the project directory:

    ```bash
    cd terraform-strapi-azure
    ```

3. Update the `admin_password` in the `main.tf` file with your desired password.

4. Initialize Terraform:

    ```bash
    terraform init
    ```

5. Apply the Terraform configuration:

    ```bash
    terraform apply
    ```

    Confirm the changes by entering "yes" when prompted.

6. Once the deployment is complete, you can access the Strapi CMS by visiting the IP address displayed in the Terraform output.

7. To destroy the resources when done:

    ```bash
    terraform destroy
    ```

    Confirm the destruction by entering "yes" when prompted.

## Accessing Strapi

To access Strapi CMS, open your web browser and navigate to:

