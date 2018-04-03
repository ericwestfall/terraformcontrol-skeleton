# terraformcontrol-skeleton

## Overview

This project provides a reference Terraform control repository that can be used as a skeleton when creating new environments.

This repository contains the following Terraform control modules:

```
  nonprod-aws-account-number: nonprod-aws-account-alias
  prod-aws-account-number: prod-aws-account-alias
```

056487292325
123456789001

## Directory Structure

```
|-terraformcontrol-skeleton
  |-nonprod-aws-account-number
    |-common
      |-main.tf
      |-terraform.tfvars
      |-variables.tf
    |-dev
      |-us-east-2
        |-main.tf
        |-terraform.tfvars
        |-variables.tf
    |-stage
      |-us-east-2
        |-main.tf
        |-terraform.tfvars
        |-variables.tf
  |-prod-aws-account-name
    |-common
      |-main.tf
      |-terraform.tfvars
      |-variables.tf
    |-prod
      |-us-east-2
        |-main.tf
        |-terraform.tfvars
        |-variables.tf
```

## State File

The accounts managed by this control repository were built using Terraform remote state backends. Each root module has a dedicated state file; before executing Terraform, execute the `terraform init` command.
