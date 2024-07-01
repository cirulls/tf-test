## PUT TERRAFORM CLOUD BLOCK HERE!  ##

terraform {
  cloud {
    organization = "sandro"

    workspaces {
      name = "tac-course"
    }
  }  
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.01"
    }
  }
}

# Variable blocks directly within the main.tf. No arguments necessary.
variable "AWS_REGION" {}
variable TFC_AWS_PROVIDER_AUTH {}
variable TFC_AWS_RUN_ROLE_ARN {}

# provider arguments call on the variables which then call on terraform.tfvars for the values.
provider "aws" {
  region     = var.AWS_REGION
}

# Add .gitignore file in this directory with the terraform.tfvars

# resource "aws_instance" "tc_instance" {
#   ami           = "ami-0c7c4e3c6b4941f0f"
#   instance_type = "t2.micro"

#   tags = {
#     Name = "TC-triggered-instance"
#   }
# }

# resource "aws_iam_user" "test_user_99" {
#   name = "test-user-99"
# }