# The default provider configuration; resources that begin with `aws_` will use
# it as the default, and it can be referenced as `aws`.
# Tokyo - HQ region


# California - additional provider configuration for Asia Pacific region
# reference this as `aws.california`.
provider "aws" {
  region = "us-west-1"
}

 
# California - additional provider configuration for Asia Pacific region
# reference this as `aws.california`.
provider "aws" {
  alias  = "california"
  region = "us-west-1"
}


# Cloudwatch Requirement for us-east-1
provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}


/*
provider "aws" {
  region = "local.region"
}

locals {
  name   = "ex-tgw-${replace(basename(path.cwd), "_", "-")}"
  region = "ap-northeast-1a"

  tags = {
    Example    = local.name
    GithubRepo = "terraform-aws-eks"
    GithubOrg  = "terraform-aws-transit-gateway"
  }
}
*/




# Providers - terraform
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.46.0" 
    }
  }
  /* cloud  { 
    
    organization = "BHoEjM" 

    workspaces { 
      name = "zion-armageddon-bhoejm" 
    } */ 
  } 
/* } */

