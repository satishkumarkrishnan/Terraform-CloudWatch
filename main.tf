terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0.0"
    }
  }
}

#TF code for AWS CW Log Group Creation
resource "aws_cloudwatch_log_group" "tokyo_cw" {
  name = "tokyo_cw"

  tags = {
    Environment = "dev"
    Application = "hw"
  }
}