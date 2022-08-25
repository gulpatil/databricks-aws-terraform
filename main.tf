variable "aws_connection_profile" {
  description = "The name of the AWS connection profile to use."
  type = string
  default = "<AWS connection profile name>"
}

variable "aws_region" {
  description = "The code of the AWS Region to use."
  type = string
  default = "<AWS Region code>"
}

variable "databricks_connection_profile" {
  description = "The name of the Databricks connection profile to use."
  type = string
  default = "<Databricks connection profile name>"
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }

    databricks = {
      source = "databricks/databricks"
    }
  }
}

provider "aws" {
  profile = var.aws_connection_profile
  region = var.aws_region
}

provider "databricks" {
  profile = var.databricks_connection_profile
}
