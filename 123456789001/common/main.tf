#--------------------------------------------------------------------------
# File: <AWS-ACCOUNT-NUMBER>/common/main.tf
# Description: This is the main terraform manifest for managing common
# infrastructure within the <AWS-ACCOUNT-ALIAS> account.
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
    key            = "tfstate/common/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "tf-state-lock-<AWS-ACCOUNT-ALIAS>-common"
  }
}


#--------------------------------------------------------------
# Terraform State Lock Table
#--------------------------------------------------------------
# Import your standardized module that creates a DynamoDB table used
# to provide state locking operations.
#
# module "terraform-state-lock-common" {
#   source = "git::ssh://git@github.com:ericwestfall/terraform-state-lock-table.git?ref=1.0.0"
#
#   read_capacity   = "${var.state_lock_read_capacity}"
#   write_capacity  = "${var.state_lock_write_capacity}"
#   tag_description = "${var.state_lock_tag_description}"
#   tag_environment = "${var.state_lock_tag_description}"
# }


#--------------------------------------------------------------
# Account Bootstrap
#--------------------------------------------------------------
# Import your standardized module that bootstraps common account-wide
# configurations such as baseline IAM roles, password policies,
# security configurations, centralized logging, account alias, etc.
#
# module "account-bootstrap" {
#   source = "git::ssh://git@github.com:ericwestfall/terraform-account-bootstrap.git?ref=1.0.0"
#
#   aws_account_alias      = "${var.aws_account_alias}"
#   aws_account_number     = "${var.aws_account_id}"
#   aws_region             = "${var.aws_region}"
#   billing_alert_contact  = "${var.billing_contact}"
#   central_logging_bucket = "${var.central_logging_bucket}"
# }
