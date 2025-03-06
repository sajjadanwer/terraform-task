# terraform-task

**providers.tf** file:
This file used to configured the AWS provider and required version also get region via defining var.region from variables.tf file.

**variables.tf** file:
This file is used to declarations of variables also defined types and default values.

**terraform.tfvars** file:
In this file configured actual values for variables in help to create infra.

**security.tf** file:
In this file creates security group using variables var.vpc_id and var.allowed_cidrs.

**main.tf** 
This file is used to creating EC2 instance and security group depends on other variables like var.subnet_id and var.instance_type.
