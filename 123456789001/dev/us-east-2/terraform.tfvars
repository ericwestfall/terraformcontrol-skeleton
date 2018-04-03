#--------------------------------------------------------------
# Global Variables
#--------------------------------------------------------------
aws_account_number = "" # AWS Account Number
aws_region         = "" # AWS Region
availability_zones = "" # Comma-Separated String of Availability Zones
environment        = "" # Environment Name (e.g. dev, stage, prod)
private_subnets    = "" # Comma-Separated List of Private Subnets (CIDR Notation)
product            = "" # Short Product Name (e.g. shared-services)
public_subnets     = "" # Comma-Separated List of Public Subnets (CIDR Notation)
technical_contact  = "" # Technical Contact Email Address


#---------------------------------------------------------------
# Development VPC (Name: exampleproduct-dev, Region: us-east-2)
#---------------------------------------------------------------
vpc_name   = "" # The VPC Name
vpc_subnet = "" # The Primary VPC CIDR Allocation
