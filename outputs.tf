/*output "asg_ec2" {
  #value = module.asg.instance.id
  value = module.asg.instance.id
}*/

output "cw_log_group" {
  value = aws_cloudwatch_log_group.tokyo_cw.name 
}

output "s3_bucket" {
  #value = aws_s3_bucket.kms_encrypted.name
  value = aws_s3_bucket.kms_encrypted.bucket
}

output "kms_id" {
  #value = aws_s3_bucket.kms_encrypted.name
  value = module.kms.kms_arn
}
#VPC Outputs
#VPC Outputs
output "vpc_id" {
  value = module.vpc.vpc_id
}

output "vpc_fe_subnet" {
  value = module.vpc.vpc_fe_subnet
}

output "vpc_be_subnet" {
  value = module.vpc.vpc_be_subnet
}

output "vpc_fe_sg" {
  value = module.vpc.vpc_fe_sg
}

output "vpc_be_sg" {
  value = module.vpc.vpc_be_sg
}