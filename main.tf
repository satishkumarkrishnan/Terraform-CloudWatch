terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0.0"
    }
  }
}

#Module code for importing KMS code
module "cloudwatch" {
  source ="git@github.com:satishkumarkrishnan/Terraform-KMS.git?ref=main"  
}

module "vpc" {
  source ="git@github.com:satishkumarkrishnan/terraform-aws-vpc.git?ref=main"
  }

module "asg" {
  source="git@github.com:satishkumarkrishnan/terraform-aws-asg.git?ref=main"  
}

#TF code for AWS CW Log Group Creation
resource "aws_cloudwatch_log_group" "tokyo_cw" {
  name = "tokyo_cw"  
  retention_in_days = "7"
  kms_key_id = module.cloudwatch.kms_arn
  tags = {
    Environment = "dev"
    Application = "helloworld"
  }  
}