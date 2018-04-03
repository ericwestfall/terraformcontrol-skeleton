#--------------------------------------------------------------
# Generic Variables
#--------------------------------------------------------------
aws_account_alias = "" # AWS Account Alias
aws_account_id    = "" # AWS Account Number
aws_region        = "" # AWS Region
billing_contact   = "" # Billing Contact Email Address
technical_contact = "" # Technical Contact Email Address
billing_cost_code = "" # Financial Classification / Cost Code
environment       = "" # Environment Name (e.g. dev, stage, prod)
product           = "" # Short Product Name (e.g. shared-services)


#--------------------------------------------------------------
# Module Specific Variables (terraform-state-lock-table)
#--------------------------------------------------------------
state_lock_read_capacity   = "1"
state_lock_write_capacity  = "1"

#--------------------------------------------------------------
# Module Specific Variables (terraform-account-bootstrap)
#--------------------------------------------------------------
central_logging_bucket  = "central-account-logs-555555555555-us-east-2"
