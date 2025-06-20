# Repository Overview

This repository contains a collection of Terraform projects and configurations for managing various AWS resources. Each folder in this repository represents a specific project or module. Below is a brief description of each folder and its purpose.

## Folder Descriptions

- **aws-IAM-Management**: Manages AWS IAM (Identity and Access Management) resources. Contains Terraform configurations for users, roles, and policies.
- **aws-ec2**: Provisions AWS EC2 (Elastic Compute Cloud) instances. Includes configurations for instance types, AMIs, and security groups.
- **aws-ec2-vpc-nginx**: Sets up an Nginx web server on an EC2 instance within a custom VPC. Defines network resources like VPC, subnets, and security groups.
- **aws-s3**: Manages AWS S3 (Simple Storage Service) buckets. Includes configurations for bucket creation, versioning, and access policies.
- **aws-vpc**: Creates a custom AWS VPC (Virtual Private Cloud). Defines the network topology, including subnets, route tables, and internet gateways.
- **proj-static-website**: Deploys a static website to AWS S3 and CloudFront. Contains HTML, CSS, and Terraform configurations for the infrastructure.
- **terraform-aws-vaibhav-test-vpc**: An empty directory, likely a placeholder or a test project for creating a VPC in AWS using Terraform.
- **tf-backend**: Configures Terraform backend for state management. Typically includes settings for S3 backend and DynamoDB for state locking.
- **tf-cli-workspace**: Demonstrates the use of Terraform CLI workspaces. Allows managing multiple environments (e.g., dev, prod) with a single configuration.
- **tf-data-sources**: Illustrates the use of Terraform data sources. Shows how to fetch information from existing AWS resources.
- **tf-functions**: Provides examples of using Terraform built-in functions. Useful for manipulating data and creating dynamic configurations.
- **tf-import-s3**: Shows how to import existing S3 buckets into Terraform management.
- **tf-module-vpc**: A Terraform module for creating a VPC. This is likely a reusable module for VPC creation.
- **tf-multi-resources**: Demonstrates provisioning multiple AWS resources in a single Terraform configuration.
- **tf-operators-exps**: Contains experiments with Terraform operators and expressions, such as list comprehensions, map operations, and conditional logic.
- **tf-own-module-vpc**: A project for creating and using a custom Terraform module for VPC.
- **tf-variables**: Illustrates different ways to use variables in Terraform. Includes examples of input variables, output values, and variable files.
