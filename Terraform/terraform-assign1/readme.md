## Prerequisites

Before you begin, ensure you have:

1. [Terraform](https://www.terraform.io/downloads.html) installed.
2. AWS credentials configured with the necessary permissions.

## Usage

1. Clone this repository:

   ```bash
   git clone https://github.com/your-username/terraform-ec2-ohio.git

   Change into the project directory:

bash
Copy code
cd terraform-ec2-ohio
Initialize Terraform:

bash
Copy code
terraform init
Review and adjust the main.tf file as needed.

Apply the Terraform configuration:

bash
Copy code
terraform apply
Confirm the changes by entering "yes" when prompted.

Once the EC2 instance is created, you can view its details in the AWS Console.

To destroy the resources when done:

bash
Copy code
terraform destroy
Confirm the destruction by entering "yes" when prompted.

Terraform Assignment - 1 
● Create an EC2 service in the default subnet in the ohio region
