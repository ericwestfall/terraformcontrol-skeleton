#--------------------------------------------------------------------------
# File: <AWS-ACCOUNT-NUMBER>/dev/main.tf
# Description: This is the main terraform manifest for managing infrastructure
# within the <AWS-ACCOUNT-ALIAS> account development environment.
#
# ALL INFRASTUCTURE SHOULD BE MANAGED USING IMPORTED MODULES, NO DIRECT
# RESOURCE DECLARATIONS SHOULD EVER BE PRESENT IN THIS FILE.
#-------------------------------------------------------------------------

provider "aws" {
  allowed_account_ids = ["${var.aws_account_id}"]

  region = "${var.aws_region}"
}


#--------------------------------------------------------------
# Terraform State Configuration
#--------------------------------------------------------------
terraform {
  required_version = "~> 0.9"

  backend "s3" {
    bucket         = "terraform-state-<AWS-ACCOUNT-NUMBER>"
    key            = "tfstate/dev/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "tf-state-lock-<AWS-ACCOUNT-ALIAS>-dev"
  }
}


#---------------------------------------------------------------
# Development VPC (Name: exampleproduct-dev, Region: us-east-2)
#---------------------------------------------------------------
# Import your standardized module that creates a VPC that adheres
# to your organizations standard VPC pattern.
#
# module "terraform-vpc" {
#   source = "git::ssh://git@github.com:ericwestfall/terraform-vpc.git?ref=1.0.0"
#
#   availability_zones = "${var.availability_zones}"
#   public_subnets     = "${var.public_subnets}"
#   private_subnet     = "${var.private_subnets}"
#   contact_tag        = "${var.contact_tag}"
#   environment_tag    = "${var.environment_tag}"
#   vpc_name           = "${var.vpc_name}"
#   product_tag        = "${var.product_tag}"
#   vpc_subnet         = "${var.vpc_subnet}"
# }
