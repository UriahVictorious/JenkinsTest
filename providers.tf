# The default provider configuration; resources that begin with `aws_` will use
# it as the default, and it can be referenced as `aws`.
# Tokyo - HQ region


# California - additional provider configuration for Asia Pacific region
# reference this as `aws.california`.
provider "aws" {
  region = "us-east-1"
}

# California - additional provider configuration for Asia Pacific region
# reference this as `aws.california`.
provider "aws" {
  alias  = "virginia"
  region = "us-east-1"
}

# Providers - terraform
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.46.0" 
    }
  }
 } 


