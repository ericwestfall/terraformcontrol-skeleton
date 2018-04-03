#--------------------------------------------------------------
# Generic Variables
#--------------------------------------------------------------
variable "aws_account_alias" {}
variable "aws_account_id" {}
variable "aws_region" {}
variable "billing_contact" {}
variable "technical_contact" {}
variable "billing_cost_code" {}
variable "environment" {}
variable "product" {}


#--------------------------------------------------------------
# Module Specific Variables (terraform-state-lock-table)
#--------------------------------------------------------------
variable "state_lock_read_capacity" {}
variable "state_lock_write_capacity" {}


#--------------------------------------------------------------
# Module Specific Variables (terraform-account-bootstrap)
#--------------------------------------------------------------
variable "central_logging_bucket" {}
